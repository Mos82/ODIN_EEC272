/******************************************************************************
* ODIN SPI programmer.
*
******************************************************************************/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xspips.h"
#include "xparameters.h"
#include "xil_io.h"
#include "synapse_data.h"
#include "neuron_data.h"

#define AXI_SPI_LOADER_BASE_ADDR XPAR_AXI_SPI_LOADER_0_S00_AXI_BASEADDR

#define ODIN_PROG_CONFIG 0x00
#define ODIN_PROG_NEURON 0x05
#define ODIN_PROG_SYNAPSE 0x06
#define ODIN_READ_NEURON 0x09
#define ODIN_READ_SYNAPSE 0x0A

#define SPI_GATE_ACTIVITY_ADDR 0x00000
#define SPI_OPEN_LOOP_ADDR 0x00001
#define SPI_SYN_SIGN_BASE_ADDR 0x00002
#define SPI_BURST_TIMEREF_ADDR 0x00012
#define SPI_AER_SRC_CTRL_nNEUR_ADDR 0x00013
#define SPI_OUT_AER_MONITOR_EN_ADDR 0x00014
#define SPI_MONITOR_NEUR_ADDR_ADDR 0x00015
#define SPI_MONITOR_SYN_ADDR_ADDR 0x00016
#define SPI_UPDATE_UNMAPPED_SYN_ADDR 0x00017
#define SPI_PROPAGATE_UNMAPPED_SYN_ADDR 0x00018
#define SPI_SDSP_ON_SYN_STIM_ADDR 0x00019

typedef struct {
    uint32_t addr;
    uint32_t data;
} addr_data_pair_t;

uint32_t spi_loader(uint32_t spi_address, uint32_t spi_data, uint32_t control_bits) {
    uint32_t address_bits = (spi_address & 0x0000FFFF) | ((control_bits << 16) & 0x000F0000);
    uint32_t data_bits = (spi_data >> 8) & 0x00000FFF;
    uint32_t combined_data = (address_bits << 12) | data_bits;

    Xil_Out32(AXI_SPI_LOADER_BASE_ADDR, combined_data);
    Xil_Out32(AXI_SPI_LOADER_BASE_ADDR + 4, spi_data & 0x000000FF);
    Xil_Out32(AXI_SPI_LOADER_BASE_ADDR + 8, 0);

    uint32_t readout = 0;
    while ((readout & 0x80000000) == 0) {
        readout = Xil_In32(AXI_SPI_LOADER_BASE_ADDR + 12);
    }

    return readout & 0x000000FF;
}

int main() {
    init_platform();
    print("Starting SPI self-test...\n\r");

    XSpiPs SpiInstance;
    XSpiPs_Config *SpiConfig = XSpiPs_LookupConfig(XPAR_PS7_SPI_0_DEVICE_ID);
    if (SpiConfig == NULL) {
        print("Device not found.\n\r");
        return XST_FAILURE;
    }

    int Status = XSpiPs_CfgInitialize(&SpiInstance, SpiConfig, SpiConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        print("Device not configured.\n\r");
        return XST_FAILURE;
    }

    addr_data_pair_t addr_data_pairs[26];
    uint8_t read_byte;

    addr_data_pairs[0].addr = SPI_GATE_ACTIVITY_ADDR;
    addr_data_pairs[0].data = 0x00001;
    addr_data_pairs[1].addr = SPI_OPEN_LOOP_ADDR;
    addr_data_pairs[1].data = 0x00000;

    for (int i = 0; i < 16; i++) {
        addr_data_pairs[i + 2].addr = SPI_SYN_SIGN_BASE_ADDR + i;
        addr_data_pairs[i + 2].data = 0xFAAAA;
    }

    addr_data_pairs[18].addr = SPI_BURST_TIMEREF_ADDR;
    addr_data_pairs[18].data = 0x00000;
    addr_data_pairs[19].addr = SPI_AER_SRC_CTRL_nNEUR_ADDR;
    addr_data_pairs[19].data = 0x00000;
    addr_data_pairs[20].addr = SPI_OUT_AER_MONITOR_EN_ADDR;
    addr_data_pairs[20].data = 0x00001;
    addr_data_pairs[21].addr = SPI_MONITOR_NEUR_ADDR_ADDR;
    addr_data_pairs[21].data = 0x00000;
    addr_data_pairs[22].addr = SPI_MONITOR_SYN_ADDR_ADDR;
    addr_data_pairs[22].data = 0x00000;
    addr_data_pairs[23].addr = SPI_UPDATE_UNMAPPED_SYN_ADDR;
    addr_data_pairs[23].data = 0x00001;
    addr_data_pairs[24].addr = SPI_PROPAGATE_UNMAPPED_SYN_ADDR;
    addr_data_pairs[24].data = 0x00001;
    addr_data_pairs[25].addr = SPI_SDSP_ON_SYN_STIM_ADDR;
    addr_data_pairs[25].data = 0x00001;

    for (int i = 0; i < 26; i++) {
        read_byte = spi_loader(addr_data_pairs[i].addr, addr_data_pairs[i].data, ODIN_PROG_CONFIG);
        xil_printf("Address: 0x%05X, Data: 0x%05X, Read Byte: 0x%02X\n", addr_data_pairs[i].addr, addr_data_pairs[i].data, read_byte);
    }

    xil_printf("Register Configuration DONE.\n\r");

    uint32_t address;

    for (int neuron_idx = 0; neuron_idx < 256; neuron_idx++) {
        for (int byte_idx = 0; byte_idx < 16; byte_idx++) {
            address = (neuron_idx) | ((byte_idx & 0xFF) << 8);
            uint8_t byte_data = (neuron_data[neuron_idx][(15 - byte_idx) / 4] >> ((byte_idx % 4) * 8)) & 0xFF;
            spi_loader(address, byte_data, ODIN_PROG_NEURON);
        }
    }
    xil_printf("Loading Neuron Data DONE.\n\r");

    for (int synapse_idx = 0; synapse_idx < 8192; synapse_idx++) {
        for (int byte_idx = 0; byte_idx < 4; byte_idx++) {
            address = (synapse_idx) | ((byte_idx & 0xFF) << 13);
            uint8_t byte_data = (synapse_data[synapse_idx] >> ((byte_idx % 4) * 8)) & 0xFF;
            spi_loader(address, byte_data, ODIN_PROG_SYNAPSE);
        }
    }
    xil_printf("Loading Synapse Data DONE.\n\r");

    //Read Test.
    for (int neuron_idx = 0; neuron_idx < 1; neuron_idx++) {
        for (int byte_idx = 0; byte_idx < 16; byte_idx++) {
            address = (neuron_idx) | ((byte_idx & 0xFF) << 8);
            uint32_t return_val = spi_loader(address, 0, ODIN_READ_NEURON);
            xil_printf("NEURON READ Address: 0x%05X, Data: 0x%05X, Read Byte: 0x%02X\n",address , 0, return_val);
        }
    }

    for (int synapse_idx = 0; synapse_idx < 1; synapse_idx++) {
        for (int byte_idx = 0; byte_idx < 4; byte_idx++) {
            address = (synapse_idx) | ((byte_idx & 0xFF) << 13);
            uint32_t return_val = spi_loader(address, 0, ODIN_READ_SYNAPSE);
            xil_printf("SYANPSE READ Address: 0x%05X, Data: 0x%05X, Read Byte: 0x%02X\n",address , 0, return_val);
        }
    }
    // END test

    //Close Programmer.
    spi_loader(0, 0, ODIN_PROG_CONFIG);

    cleanup_platform();
    return 0;
}
