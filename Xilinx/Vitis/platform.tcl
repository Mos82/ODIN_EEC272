# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\xil_workspace\testPlatform2\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\xil_workspace\testPlatform2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {testPlatform2}\
-hw {E:\vivado_projects\ODIN_272\ODIN_design_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {E:/xil_workspace}

platform write
platform active {testPlatform2}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
platform config -updatehw {E:/vivado_projects/ODIN_272/ODIN_design_wrapper.xsa}
