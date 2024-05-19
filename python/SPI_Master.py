import spidev
import gpiozero
import time

# Pin Definitions
cs_pin = gpiozero.LED(10)  # Using LED to control CS as it's just a GPIO output

# ODIN SPI Address Constants
SPI_GATE_ACTIVITY_ADDR = 0x0000
SPI_OPEN_LOOP_ADDR = 0x0001
SPI_SYN_SIGN_BASE_ADDR = 0x0002
SPI_BURST_TIMEREF_ADDR = 0x0012
SPI_AER_SRC_CTRL_nNEUR_ADDR = 0x0013
SPI_OUT_AER_MONITOR_EN_ADDR = 0x0014
SPI_MONITOR_NEUR_ADDR_ADDR = 0x0015
SPI_MONITOR_SYN_ADDR_ADDR = 0x0016
SPI_UPDATE_UNMAPPED_SYN_ADDR = 0x0017
SPI_PROPAGATE_UNMAPPED_SYN_ADDR = 0x0018
SPI_SDSP_ON_SYN_STIM_ADDR = 0x0019

# Setup SPI
spi = spidev.SpiDev()
spi.open(0, 0)  # Open bus 0, device 0
spi.max_speed_hz = 8000000
spi.mode = 0

def write_register(address, data, is_global=False):
    cs_pin.off()
    if is_global:
        # Global parameters use 20-bit address
        spi.xfer([(address >> 8) & 0xFF, address & 0xFF, 0x0 | ((data >> 16) & 0xF)])
    else:
        # Non-global parameters use 20-bit address
        spi.xfer([(address >> 12) & 0xFF, (address >> 4) & 0xFF, ((address & 0xF) << 4) | ((data >> 16) & 0xF)])
    spi.xfer([(data >> 8) & 0xFF, data & 0xFF])
    cs_pin.on()

def load_and_send_neuron_data():
    neuron_index = 0
    with open('neuron_data.txt', 'r') as file:
        for line in file:
            neuron_data = [int(x) for x in line.strip().split()]
            for byte_num, data in enumerate(neuron_data):
                spi_address = (0b0101 << 16) | (byte_num << 10) | neuron_index
                spi_data = (0 << 12) | (0x00 << 8) | data
                write_register(spi_address, spi_data)
            neuron_index += 1
    print("Finished loading and sending neuron data.")

def load_and_send_synaptic_data():
    synapse_index = 0
    with open('synaptic_data.txt', 'r') as file:
        for line in file:
            synapse_value = int(line.strip())
            for syn_byte in range(4):
                part = (synapse_value >> (syn_byte * 8)) & 0xFF
                spi_data = (0 << 12) | (0x00 << 8) | part
                spi_address = (0b0110 << 16) | (syn_byte << 13) | (synapse_index & 0x1FFF)
                write_register(spi_address, spi_data)
            synapse_index += 1
    print("Finished loading and sending synapse data.")

# Main function
if __name__ == "__main__":
    try:
        load_and_send_neuron_data()
        load_and_send_synaptic_data()
    finally:
        spi.close()  # Ensure SPI is closed on error or normal exit
