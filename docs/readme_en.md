[TOC]

# Documentation Directory Overview

In the Rockchip Linux SDK, the `docs` directory is divided into Chinese documentation (`cn`), English documentation (`en`), and the Software Bill of Materials (`sbom`) directories. The `sbom` directory includes the following structure:

```
sbom/
├── buildroot
│   ├── copyright
│   │   ├── BUILDROOT_README
│   │   ├── host-software_copyright_list.csv
│   │   └── software_copyright_list.csv
│   └── cve
│       └── software_vulnerability_check_list.html
└── kernel
    ├── Latest-Release-Rockchip-Kernel-CVEs-Link.txt
    └── cve
        ├── 2025-01.md
        ├── 2025-02.md
        ├── 2025-03.md
        ├── 2025-04.md
        ├── 2025-05.md
        ├── 2025-06.md
        ├── 2025-07.md
        ├── 2025-08.md
        ├── 2025-09.md
        ├── 2025-10.md
        └── 2025-11.md
```

`LICENSE` is the document license statement published by Rockchip.
`sbom` stands for Software Bill of Materials, which provides detailed information about the **open-source components, third-party libraries, version information, licenses, dependencies, and vulnerability mapping data** included in the software.

`host-software_copyright_list.csv`, `software_copyright_list.csv`, and `BUILDROOT_README` contain detailed license information for third-party packages built by default in Buildroot.
`software_vulnerability_check_list.html` is used by Buildroot to generate a report listing all packages under the current configuration, as well as to detect known CVE vulnerabilities and upstream version update status.

The documentation released with the Rockchip Linux SDK is intended to help developers quickly get started with development and debugging. The content covered in the documentation does not encompass all development knowledge and issues. The list of documents will continue to be updated. If you have any questions or needs regarding the documentation, please contact our FAE support at fae@rock-chips.com.

In the Rockchip Linux SDK, the docs directory is divided into Chinese (cn) and English (en). The Chinese directory includes Common (general development guidance documents), Socs (chip platform-related documents), Linux (Linux system development-related documents), Others (other reference documents), and docs_list_en.txt (docs file directory structure). The specific introduction is as follows: (Note: The last sentence seems to be incomplete in the original text, so it is translated as provided.)

## General Development Guidance Document (Common)

Please see the documentation in each subdirectory of `<SDK>/docs/en/Common` for details.

### Asymmetric Multi-Processing System Development Guide (AMP)

For details, see the `<SDK>/docs/en/Common/AMP` directory. The AMP system is a general-purpose multicore heterogeneous system solution provided by Rockchip, which has been widely used in industrial applications such as power and industrial control, as well as consumer products like vacuum cleaners.

### Audio Module Document (AUDIO)

It includes development documents for audio modules. The reference documents are as follows:

```
docs/en/Common/AUDIO/
├── Rockchip_Developer_Guide_Audio_EN.pdf
└── Rockchip_Developer_Guide_Linux_RV_Series_ACodec_EN.pdf
```

### Peripheral Components Support List (AVL)

Please refer to`<SDK>/docs/en/Common/AVL` directory for details, which contains the support list for DDR/eMMC/FLASH/UFS/WIFI-BT. The support list is updated in real time on the redmine. The link is as follows:

```
https://redmine.rockchip.com.cn/projects/fae/documents
```

#### DDR Support List

The Rockchip platform DDR chip support list can be found in `<SDK>/docs/en/Common/AVL` under the document **Rockchip_DDR_Approved_Vendor_List_xxx.pdf**. The table below shows the support level for DDR chips. It is recommended to select chips marked with √ or T/A only.

**Table 1‑1 Rockchip DDR Support Symbol**

| **Symbol** | **Description**                                                                                                            |
| ---------- | :------------------------------------------------------------------------------------------------------------------------- |
| √          | Fully Tested and Mass Production                                                                                           |
| T/A        | Fully Tested and Applicable                                                                                                |
| S/A        | Sample Tested and Applicable, but there is a risk of small margins or other issues requiring validation in mass production |
| N/A        | Not Applicable                                                                                                             |

#### eMMC Support List

The Rockchip platform eMMC chip support list can be found in `<SDK>/docs/en/Common/AVL` under the document **Rockchip_EMMC_Approved_Vendor_List_xxx.pdf**. The table below shows the support level for eMMC chips. It is recommended to select chips marked with √ or T/A only.

**Table 1‑2 Rockchip eMMC Support Symbol**

| **Symbol** | **Description**                                         |
| ---------- | :------------------------------------------------------ |
| √          | Fully Tested, Applicable, and Mass Production           |
| T/A        | Fully Tested, Applicable, and Ready for Mass Production |
| D/A        | Datasheet Applicable, requires Sample Testing           |
| N/A        | Not Applicable                                          |

- **Selection of High-Performance eMMC Chips**

To enhance system performance, it is necessary to choose high-performance eMMC chips. Before selecting an eMMC chip, please refer to the models in the support list provided by Rockchip and pay close attention to the `performance` section in the manufacturer's datasheet.

Please select eMMC chips based on the manufacturer's size specifications and the read/write speeds. It is recommended to choose chips with sequential read speeds >200MB/s and sequential write speeds >40MB/s.

If there are any doubts about selection, you can also directly contact the Rockchip FAE team <fae@rock-chips.com>.

![eMMC](resources/emmc.png)
																				Figure 1‑1 eMMC Performance Example

#### Flash Support List

For the support status of SPI Nor, SPI NAND, SLC, and other Flash devices on the Rockchip platform, please refer to `<SDK>/docs/en/Common/AVL` in **Rockchip_Flash_Approved_Vendor_List_xxx.pdf**. This document contains support and validation information for each Flash model and is useful for device selection and design evaluation. The table below shows the Flash support levels; it is recommended to select chips marked with √ or T/A only.

**Table 1‑3 Rockchip SPI Nor, SPI NAND, SLC Support Symbol**

| **Symbol** | **Description**                                        |
| ---------- | :----------------------------------------------------- |
| √          | Fully Tested, Applicable and Mass Production           |
| T/A        | Fully Tested, Applicable and Ready for Mass Production |
| D/A        | Datasheet Applicable, requires Sample Testing          |
| N/A        | Not Applicable                                         |

#### UFS Support List

The Rockchip platform UFS support list can be found in `<SDK>/docs/en/Common/AVL` under **Rockchip_UFS_Approved_Vendor_List_xxx.pdf**. The document lists UFS models for device selection. The table below shows the UFS support levels; it is recommended to select chips marked with √ or T/A only.

**Table 1‑5 Rockchip UFS Support Symbol**

| **Symbol** | **Description**                                        |
| ---------- | :----------------------------------------------------- |
| √          | Fully Tested, Applicable and Mass Production           |
| T/A        | Fully Tested, Applicable and Ready for Mass Production |
| D/A        | Datasheet Applicable, requires Sample Testing          |
| N/A        | Not Applicable                                         |

#### WIFI/BT  Support List

WIFI/BT Support List for Rockchip Platform can be found in the document titled 'Rockchip_Support_List_Linux_WiFi_BT_Ver2.0_20250619.pdf' in the `<SDK>/docs/en/Common/AVL` directory. This document contains a comprehensive list of WIFI/BT chips tested extensively on the Rockchip platform. It is advisable to select models based on the list. For the testing of other WIFI/BT chips, corresponding kernel drivers should be provided from the original manufacturers of the WIFI/BT chips.

For any questions about chip selection, it is recommended to contact the Rockchip FAE team at <fae@rock-chips.com>.

#### Camera  Support List

Camera Support List for Rockchip Platform can be found in the [Camera Module Support List](https://redmine.rock-chips.com/projects/rockchip_camera_module_support_list/camera). This online list  contains a comprehensive collection of Camera Modules extensively tested on the Rockchip platform. It is advisable to select models based on the list.

For any questions about  module selection, it is recommended to contact the Rockchip FAE team at sw.fae@rock-chips.com>.

### CAN Module Document (CAN)

CAN bus, also known as Controller Area Network, is an efficient serial communication network used for distributed control or real-time control. The following documents mainly cover CAN driver development, communication testing tools, common command interfaces, and frequently asked questions.

```
docs/en/Common/CAN/
├── Rockchip_Developer_Guide_CAN_FD_EN.pdf
└── Rockchip_Developer_Guide_Can_EN.pdf
```

### Clock Module Document (CLK)

This document primarily covers clock development on the Rockchip platform, including Clock, GPIO, PLL spreading, etc.

```
docs/en/Common/CLK/
├── Rockchip_Developer_Guide_Clock_EN.pdf
├── Rockchip_Developer_Guide_Gpio_Output_Clocks_EN.pdf
└── Rockchip_Developer_Guide_Pll_Ssmod_Clock_EN.pdf
```

### CRYPTO Module Document (CRYPTO)

The following documents primarily focus on the development of Rockchip Crypto and HWRNG (TRNG), including driver development and upper-layer application development.

```
docs/en/Common/CRYPTO/
└── Rockchip_Developer_Guide_Crypto_HWRNG_EN.pdf
```

### DDR Module Document (DDR)

This module document mainly includes DDR development guide, DDR issue troubleshooting, DDR chip validation process, DDR board layout instructions, DDR bandwidth tool usage, and DDR DQ eye diagram tool, etc. for Rockchip platform.

```
docs/en/Common/DDR/
├── Rockchip-Developer-Guide-DDR-EN.pdf
```

### Debug Module Document (DEBUG)

This module document mainly includes introduction to the use of debugging tools such asEclipse_OpenOCD, etc. for Rockchip platform.

```
docs/en/Common/DEBUG/
└── Rockchip_Developer_Guide_GNU_MCU_Eclipse_OpenOCD_CN.pdf
```

### Display Module Document (DISPLAY)

This module document mainly includes development documents about DRM,DP,HDMI,LVDS,MIPI,RGB,RK628 and other display modules for Rockchip platform.

```
docs/en/Common/DISPLAY/
├── BT656-BT1120
├── DP
├── DRM
├── HDCP
├── HDMI
├── LVDS
├── MIPI
├── RGB
├── RK628
├── Vsync
└── eDP
```

### DMSC Module Documentation (DSMC)

This module documentation mainly contains the development documentation for the Double Data Rate Serial Memory Controller (DSMC) on the Rockchip platform. The Double Data Rate Serial Memory Controller (DSMC) utilizes time-division multiplexing of command, address, and data lines, with data transfer occurring on both the rising and falling edges, featuring fewer pins and higher bandwidth.

```
docs/en/Common/DSMC/
├── Rockchip_Developer_Guide_DSMC_EN.pdf
└── Rockchip_Developer_Guide_SLAVE_DSMC_EN.pdf
```

### Dynamic Frequency and Voltage Adjustment Module Documentation (DVFS)

This module document primarily covers CPU/GPU/DDR and other dynamic frequency and voltage adjustment modules for Rockchip platform.

Cpufreq and Devfreq are a set of framework models defined by kernel developers that support dynamic frequency and voltage adjustment based on specified governors. It effectively reduces power consumption while balancing performance.

```
docs/en/Common/DVFS/
├── Rockchip_Developer_Guide_CPUFreq_EN.pdf
└── Rockchip_Developer_Guide_Devfreq_EN.pdf
```

### FLEXBUS Module Documentation (FLEXBUS)

This module documentation mainly contains development documentation related to FLEXBUS on the Rockchip platform.

```
docs/en/Common/FLEXBUS/
├── Rockchip_Developer_Guide_Linux_FLEXBUS_ADC_and_DAC_MODE_EN.pdf
├── Rockchip_Developer_Guide_Linux_FLEXBUS_EN.pdf
└── Rockchip_Developer_Guide_Linux_FLEXBUS_FSPI_MODE_EN.pdf
```

### Ethernet Module Document (GMAC)

This module document primarily includes the development documentation related to the Ethernet GMAC interface on the Rockchip platform.

```
docs/en/Common/GMAC/
├── Rockchip_Developer_Guide_Linux_GMAC_EN.pdf
├── Rockchip_Developer_Guide_Linux_GMAC_DPDK_EN.pdf
├── Rockchip_Developer_Guide_Linux_GMAC_Mode_Configuration_EN.pdf
├── Rockchip_Developer_Guide_Linux_GMAC_RGMII_Delayline_EN.pdf
└── Rockchip_Developer_Guide_Linux_MAC_TO_MAC_EN.pdf
```

### HDMI-IN Module Document  (HDMI-IN)

This module document mainly contains development documents related to the HDMI-IN interface of the Rockchip platform.

```
docs/en/Common/HDMI-IN/
├── Rockchip_Developer_Guide_HDMI_IN_Based_On_CameraHal3_EN.pdf
└── Rockchip_Developer_Guide_HDMI_RX_EN.pdf
```

### I2C Module Document (I2C)

This module document mainly contains development documents related to I2C interface of the Rockchip platform.

```
docs/en/Common/I2C/
└── Rockchip_Developer_Guide_I2C_EN.pdf
```

### IO Power Domain Module Document (IO-DOMAIN)

In the Rockchip platform, IO voltages generally include 1.8V, 3.3V, 2.5V, 5.0V, etc. Some IO interfaces support multiple voltage levels. The io-domain is responsible for configuring the IO power domain registers. It configures the corresponding voltage registers based on the actual hardware voltage range. Without proper configuration, the IO interfaces cannot function correctly.

```
docs/en/Common/IO-DOMAIN/
└── Rockchip_Developer_Guide_Linux_IO_DOMAIN_EN.pdf
```

### IOMMU Module Document (IOMMU)

It mainly introduces the Rockchip platform IOMMU for converting 32-bit virtual addresses and physical addresses. It has read and write control bits and can generate page missing exceptions and bus exception interrupts.

```
docs/en/Common/IOMMU/
└── Rockchip_Developer_Guide_Linux_IOMMU_EN.pdf
```

### Image Module Document (ISP)

ISP1.X is mainly suitable for RK3399/RK3288/PX30/RK3326/RK1808, etc.
ISP21 is mainly suitable for RK3566_RK3568, etc.
ISP30 is mainly suitable for RK3588, etc.
ISP32-lite is mainly suitable for RK3562, etc.
ISP35 is mainly suitable for RV1126B, etc.
ISP39 is mainly suitable for RK3576, etc.

It contains ISP development documents, VI driver development documents, IQ Tool development documents, debugging documents and color debugging documents. The reference documents are as follows:

```
docs/en/Common/ISP/
└── The-Latest-Camera-Documents-Link.txt
```

> **Note: **
> Reference documents about RK3288/RK3399/RK3326/RK1808 Linux(kernel-4.4) rkisp1 driver, sensor driver, vcm driver is: "RKISP_Driver_User_Manual_v1.3_20190919";
> RK3288/RK3399/RK3326/RK1808 Linux(kernel-4.4) camera_engine_rkisp (3A repositry) reference documents is: "camera_engine_rkisp_user_manual_v2.0";
> Reference document for IQ effect file parameters of RK3288/RK3399/RK3326/RK1808 Linux(kernel-4.4) camera_engine_rkisp v2.0.0 version v2.0.0 and above is: "RKISP1_IQ_Parameters_User_Guide_v1.0_20190606".

### MCU Module Document (MCU)

MCU development guide on the Rockchip platform.

```
docs/en/Common/MCU/
└── Rockchip_RK3399_Developer_Guide_MCU_EN.pdf
```

### MMC Module Document (MMC)

Development guide for interfaces such as SDIO, SDMMC, and eMMC on the Rockchip platform.

```
docs/en/Common/MMC/
├── Rockchip_Developer_Guide_SDMMC_SDIO_eMMC_EN.pdf
└── Rockchip_Developer_Guide_SD_Boot_EN.pdf
```

### Memory Module Document (MEMORY)

Process memory module mechanisms such as CMA and DMABUF on the Rockchip platform.

```
docs/en/Common/MEMORY/
├── Rockchip_Developer_Guide_Linux_CMA_EN.pdf
├── Rockchip_Developer_Guide_Linux_DMABUF_EN.pdf
├── Rockchip_Developer_Guide_Linux_Meminfo_EN.pdf
└── Rockchip_Developer_Guide_Linux_Memory_Allocator_EN.pdf
```

### MPP Module Document (MPP)

MPP development instructions on the Rockchip platform.

```
docs/en/Common/MPP/
└── Rockchip_Developer_Guide_MPP_EN.pdf
```

### NPU Module Document (NPU)

RKNN software stack can help users to quickly deploy AI models to Rockchip chips. The overall framework is as follows:

   <center class="half">
        <div style="background-color:#ffffff;">
        <img src="resources/framework.png" title="RKNN"/>
    </center>
In order to use RKNPU, users need to first run the RKNN-Toolkit2 tool on the computer, convert the trained model into an RKNN format model, and then inference on the development board using the RKNN C API or Python API.

#### RKNN-TOOLKIT2

RKNN-Toolkit2 is a software development kit for users to perform model conversion, inference and performance evaluation on PC and Rockchip NPU platforms.

RKNN-Toolkit-Lite2 provides Python programming interfaces for Rockchip NPU platform to help users deploy RKNN models and accelerate the implementation of AI applications.

The development kit is located in the `external/rknn-toolkit2` directory, mainly used to implement a series of functions such as model conversion, optimization, quantization, inference, performance evaluation, and accuracy analysis.

Basic functions are as follows:

| Function    | Description |
| :------------: | :----------- |
| Model Conversion | Supports floating-point models of Pytorch / TensorFlow / TFLite / ONNX / Caffe / Darknet<br/>Supports quantization-aware models (QAT) of Pytorch / TensorFlow / TFLite<br/>Supports dynamic input models (dynamicization/native dynamic)<br/>Supports large models |
| Model Optimization | Constant folding / OP correction / OP Fuse&Convert / Weight sparsification / Model pruning |
| Model Quantization | Supports quantization types: asymmetric i8/fp16 <br/>Supports Layer / Channel quantization methods; Normal / KL/ MMSE quantization algorithms<br/>Supports mixed quantization to balance performance and accuracy |
| Model Inference | Supports model inference through the simulator on the PC<br/>Supports model inference on the NPU hardware platform (board-level inference)<br/>Supports batch inference, supports multi-input models |
| Model Evaluation | Supports performance and memory evaluation of the model on the NPU hardware platform |
| Accuracy Analysis | Supports quantization accuracy analysis function (simulator/NPU) |
| Additional Features | Supports version/device query functions, etc. |

#### RKNN Runtime

The development documentation for RKNN Runtime is located in the `external/rknpu2` directory of the project. It is used to infer models generated by RKNN-Toolkit2 and provides C/C++ programming interfaces for the Rockchip NPU platform, assisting users in deploying RKNN models and accelerating AI application implementation.

For detailed usage instructions, refer to the documentation in the current rknpu2/ directory:

```
├── 01_Rockchip_RKNPU_Quick_Start_RKNN_SDK_V2.3.2_EN.pdf
├── 02_Rockchip_RKNPU_User_Guide_RKNN_SDK_V2.3.2_EN.pdf
├── 03_Rockchip_RKNPU_API_Reference_RKNN_Toolkit2_V2.3.2_EN.pdf
├── 04_Rockchip_RKNPU_API_Reference_RKNNRT_V2.3.2_EN.pdf
├── 05_RKNN_Compiler_Support_Operator_List_V2.3.2.pdf
├── RKNNToolKit2_API_Difference_With_Toolkit1-2.3.2.md
├── RKNNToolKit2_OP_Support-2.3.2.md
...
```

#### RKNN Driver

The RKNN kernel driver handles interactions with NPU hardware and is integrated into the Rockchip kernel code under `drivers/rknpu`.

#### RKNN LLM

RKNN LLM is an inference framework optimized by Rockchip for large language model (LLM) scenarios. It aims to help users efficiently deploy and run large pre-trained language models (e.g., LLaMA, PaLM, ChatGLM) on Rockchip's proprietary NPU hardware platform.

For detailed usage instructions, refer to the documentation in the current rknpu2/ directory:

```
├── Rockchip_RKLLM_SDK_EN_1.2.3.pdf
```

### NVM Module Document (NVM)

It mainly introduces the boot process on the Rockchip platform, configuring and debugging storage, OTP OEM area burning and other security interfaces.

```
docs/en/Common/NVM/
├── Rockchip_Application_Notes_Storage_EN.pdf
├── Rockchip_Application_Notes_VendorStorage_EN.pdf
├── Rockchip_Developer_Guide_Linux_Flash_Open_Source_Solution_EN.pdf
└── Rockchip_Developer_Guide_Secure_Boot_Application_Note_EN.pdf
```

### PCIe Module Document (PCIe)

It mainly introduces the development instructions of PCIe on Rockchip platform.

```
docs/en/Common/PCIe/
├── Rockchip_Developer_Guide_PCIE_EP_Standard_Card_APIs_EN.pdf
├── Rockchip_Developer_Guide_PCIE_EP_Standard_Card_EN.pdf
├── Rockchip_Developer_Guide_PCIe_EN.pdf
└── Rockchip_Developer_Guide_PCIe_Performance_EN.pdf
```

### Performance Module Document (PERF)

Introduction to PERF Performance analysis on Rockchip Platform

```
docs/en/Common/PERF/
├── Rockchip_Developer_Guide_Linux_RealTime_Performance_Test_Report_CN.pdf
└── Rockchip_Quick_Start_Linux_Performance_Analyse_CN.pdf
```

### GPIO Module Document (PINCTRL)

PIN-CTRL driver and DTS usage method on Rockchip platform.

```
docs/en/Common/PINCTRL/
└── Rockchip_Developer_Guide_Linux_Pinctrl_EN.pdf
```

### PMIC Module Document (PMIC)

Developer guide for PMICs such as RK805, RK806, RK808, RK809, and RK817 on the Rockchip platform.

```
docs/en/Common/PMIC/
├── Rockchip_RK801_Developer_Guide_EN.pdf
├── Rockchip_RK805_Developer_Guide_EN.pdf
├── Rockchip_RK806_Developer_Guide_EN.pdf
├── Rockchip_RK808_Developer_Guide_EN.pdf
├── Rockchip_RK809_Developer_Guide_EN.pdf
├── Rockchip_RK816_Developer_Guide_EN.pdf
├── Rockchip_RK817_Developer_Guide_EN.pdf
├── Rockchip_RK818_Developer_Guide_EN.pdf
├── Rockchip_RK818_RK816_Developer_Guide_Fuel_Gauge_EN.pdf
└── Rockchip_RK818_RK816_Introduction_Fuel_Gauge_Log_EN.pdf
```

### Power Module Document (POWER)

Basic concepts and optimization methods for chip power consumption on Rockchip platform.

```
docs/en/Common/POWER/
└── Rockchip_Developer_Guide_Power_Analysis_EN.pdf
```

### PWM Module Document (PWM)

PWM developer guide on the Rockchip platform.

```
docs/en/Common/PWM
└── Rockchip_Developer_Guide_Linux_PWM_EN.pdf
```

### RGA Module Document (RGA)

RGA developer guide on the Rockchip platform.

```
docs/en/Common/RGA/
├── Rockchip_Developer_Guide_RGA_EN.pdf
└── Rockchip_FAQ_RGA_EN.pdf
```

### SARADC Module Document (SARADC)

SARADC developer guide on the Rockchip platform.

```
docs/en/Common/SARADC/
└── Rockchip_Developer_Guide_Linux_SARADC_EN.pdf
```

### SPI Module Document (SPI)

SPI developer guide on the Rockchip platform.

```
docs/en/Common/SPI/
└── Rockchip_Developer_Guide_Linux_SPI_EN.pdf
```

### Thermal Module Document (THERMAL)

Thermal developer guide on the Rockchip platform.

```
docs/en/Common/THERMAL/
└── Rockchip_Developer_Guide_Thermal_EN.pdf
```

### Tools Module Document (TOOL)

Instructions for using tools such as partitioning, mass production burning, and factory line burning on the Rockchip platform.

```
docs/en/Common/TOOL/
├── Rockchip_Introduction_Partition_EN.pdf
└── Rockchip_User_Guide_Production_For_Firmware_Download_EN.pdf
```

### Security Module Document (TRUST)

Introduction to functions such as TRUST and sleep & wake-up on the Rockchip platform

```
docs/en/Common/TRUST/
├── Rockchip_Developer_Guide_Trust_EN.pdf
├── Rockchip_RK3308_Developer_Guide_System_Suspend_EN.pdf
├── Rockchip_RK3399_Developer_Guide_System_Suspend_EN.pdf
├── Rockchip_RK3506_Developer_Guide_System_Suspend_EN.pdf
├── Rockchip_RK356X_Developer_Guide_System_Suspend_EN.pdf
├── Rockchip_RK3576_Developer_Guide_System_Suspend_EN.pdf
└── Rockchip_RK3588_Developer_Guide_System_Suspend_EN.pdf
```

### UART Module Document (UART)

Introduction to serial port functions and debugging on the Rockchip Platform

```
docs/en/Common/UART/
├── Rockchip_Developer_Guide_UART_EN.pdf
└── Rockchip_Developer_Guide_UART_FAQ_EN.pdf
```

### UBOOT Module Document (UBOOT)

Introduction to U-Boot related development on the Rockchip platform

```
docs/en/Common/UBOOT/
└── Rockchip_Developer_Guide_UBoot_Nextdev_EN.pdf
```

### USB Module Document (USB)

Introduction to USB development guide, USB signal testing and debugging tools on the Rockchip platform

```
docs/en/Common/USB/
├── Rockchip_Developer_Guide_Linux_USB_Initialization_Log_Analysis_EN.pdf
├── Rockchip_Developer_Guide_Linux_USB_Performance_Analysis_EN.pdf
├── Rockchip_Developer_Guide_USB2_Compliance_Test_EN.pdf
├── Rockchip_Developer_Guide_USB_EN.pdf
├── Rockchip_Developer_Guide_USB_FFS_Test_Demo_EN.pdf
├── Rockchip_Developer_Guide_USB_Gadget_UAC_EN.pdf
├── Rockchip_Developer_Guide_USB_SQ_Test_EN.pdf
├── Rockchip_Introduction_USB_SQ_Tool_EN.pdf
├── Rockchip_RK3399_Developer_Guide_USB_EN.pdf
├── Rockchip_RK356x_Developer_Guide_USB_EN.pdf
├── Rockchip_RK3588_Developer_Guide_USB_EN.pdf
├── Rockchip_Trouble_Shooting_Linux4.19_USB_Gadget_UVC_EN.pdf
└── Rockchip_Trouble_Shooting_Linux_USB_Host_UVC_EN.pdf
```

### Watchdog Module Document (WATCHDOG)

Development instructions for Watchdog on the Rockchip platform.

```
docs/en/Common/WATCHDOG/
└── Rockchip_Developer_Guide_Linux_WDT_EN.pdf
```

## Linux System Development Documents (Linux)

Please refer to documents under the `<SDK>/docs/en/Linux`:

```
├── ApplicationNote
├── Audio
├── Camera
├── DPDK
├── Docker
├── Graphics
├── Multimedia
├── Profile
├── Recovery
├── Security
├── System
├── Uefi
└── Wifibt
```

### ApplicationNote

Development instructions for applications on the Rockchip platform, such as ROS, USB, etc

```
docs/en/Linux/ApplicationNote/
├── Rockchip_Developer_Guide_Linux_PCBA_EN.pdf
├── Rockchip_Developer_Guide_Linux_RKIPC_EN.pdf
├── Rockchip_Instruction_Linux_ROS2_EN.pdf
├── Rockchip_Instruction_Linux_ROS_EN.pdf
├── Rockchip_Quick_Start_Linux_USB_Gadget_EN.pdf
└── Rockchip_Use_Guide_Linux_EtherCAT_IgH_EN.pdf
```

### Audio Development Documents (Audio)

Self developed audio algorithm on Rockchip platform.

```
docs/en/Linux/Audio/
├── Algorithms
└── Rockchip_Developer_Guide_PulseAudio_EN.pdf
```

### Camera Development Documents (Camera)

MIPI/CSI Camera and Structured Light Development Guide on the Rockchip Platform

```
docs/en/Linux/Camera/
├── Rockchip_Developer_Guide_Linux4.4_Camera_EN.pdf
├── Rockchip_Developer_Guide_Linux_RMSL_EN.pdf
└── Rockchip_Trouble_Shooting_Linux4.4_Camera_EN.pdf
└── Rockchip_Trouble_Shooting_Linux5.10_Camera_EN.pdf
```

### Docker Development Documents (Docker)

Docker build and development of third-party systems such as Debian/Buildroot on the Rockchip platform.

```
docs/en/Linux/Docker/
├── Rockchip_Developer_Guide_Debian_Docker_EN.pdf
├── Rockchip_Developer_Guide_Linux_Docker_Deploy_EN.pdf
└── Rockchip_User_Guide_SDK_Docker_EN.pdf
```

### DPDK Module (DPDK)

DPDK development guide on Rockchip Linux platform.

```
docs/en/Linux/DPDK/
└── Rockchip_Developer_Guide_Linux_DPDK_EN.pdf
```

### Graphics Development Documents (Graphics)

Linux Graphics related development on Rockchip Platform.

```
docs/en/Linux/Graphics/
├── Rockchip_Developer_Guide_Buildroot_Weston_EN.pdf
└── Rockchip_Developer_Guide_Linux_Graphics_EN.pdf
└── Rockchip_Developer_Guide_Linux_LVGL_EN.pdf
```

### Multimedia

The general process of video encoding and decoding on the Rockchip Linux platform:

```
vpu_service  -->  mpp --> gstreamer/rockit --> app
vpu_service: driver
MPP: A video encoding and decoding middleware for the Rockchip platform. Please refer to the MPP documentation for detailed instructions
Gstreamer/rockit: used to connect components such as apps
```

Currently, gstreamer is used in Debian/Buildroot systems by default to connect apps and codec components.

Currently, the key development documents are as follows:

```
docs/en/Linux/Multimedia/
├── Rockchip_Developer_Guide_Linux_RKADK_EN.pdf
├── Rockchip_User_Guide_Linux_Gstreamer_EN.pdf
└── Rockchip_User_Guide_Linux_Rockit_EN.pdf
```

 Encoding and decoding functionalities can also be tested directly through the testing interfaces provided by MPP (such as mpi_dec_test\mpi_enc_test...). MPP source code reference is located in `<SDK>/external/mpp/`. For testing demos, please refer to `<SDK>/external/mpp/test`. Please refer to  the SDK document `Rockchip_Developer_Guide_MPP_EN.pdf`  for details.

Rockchip chips like RK3588 support powerful multimedia capabilities:

- Supports H.265/H.264/AV1/VP9/AVS2 video decoding, up to 8K60FPS, also supports 1080P multi-format video decoding (H.263, MPEG1/2/4, VP8, JPEG).
- Supports 8K H.264/H.265 video encoding and 1080P VP8, JPEG video encoding.
- Video post-processing: deinterlacing, noise reduction, edge/detail/color optimization.

Below are the reference specifications for common chip encoding and decoding capabilities on each platform.

> **Note:** The maximum testing specifications are related to numerous factors, so the same decoding IP specifications might differ among different chips. Chip support may vary in different systems, leading to differences in supported formats and performance.

- **Decoding Capability Specification Table**

| **Chip** |   **H264**    |   **H265**    |    **VP9**    |    **JPEG**    |
| :-----------: | :-----------: | :-----------: | :-----------: | :------------: |
|    RV1126B     |  3840x2160@30fps  |  3840x2160@30fps  | N/A | 3840x2160@30fps |
|    RK3588     |  7680X4320@30f  |  7680X4320@60f  |  7680X4320@60f  | 1920x1088@200f |
|    RK3576     | 3840x2160@60fps | 7680x4320@30fps | 7680x4320@30fps | 1920x1088@200f |
| RK3566/RK3568 |  4096x2304@60f  |  4096x2304@60f  |  4096x2304@60f  | 1920x1080@60f  |
|    RK3562     |  1920x1088@60f  |  2304x1440@30f  |  4096x2304@30f  | 1920x1080@120f |
|    RK3399     |  4096x2304@30f  |  4096x2304@60f  |  4096x2304@60f  | 1920x1088@30f  |
|    RK3328     |  4096x2304@30f  |  4096x2304@60f  |  4096x2304@60f  | 1920x1088@30f  |
|    RK3288     |  3840x2160@30f  |  4096x2304@60f  |       N/A       | 1920x1080@30f  |
|    RK3326     |  1920x1088@60f  |  1920x1088@60f  |       N/A       | 1920x1080@30f  |
|     PX30      |  1920x1088@60f  |  1920x1088@60f  |       N/A       | 1920x1080@30f  |
|    RK312X     |  1920x1088@30f  |  1920x1088@60f  |       N/A       | 1920x1080@30f  |

- **Coding Capability Specification Table**

| **Chip** |   **H264**    |   **H265**    |    **VP8**    |
| :----------: | :-----------: | :-----------: | :-----------: |
|    RV1126B     |  3840x2160@30fps  |  3840x2160@30fps  | N/A |  N/A|
|    RK3588     |  7680x4320@30f  |  7680x4320@30f  | 1920x1088@30f |
|    RK3576     | 4096x2304@60fps | 4096x2304@60fps |      N/A      |
| RK3566/RK3568 |  1920x1088@60f  |  1920x1088@60f  |      N/A      |
|    RK3562     |  1920x1088@60f  |       N/A       |      N/A      |
|    RK3399     |  1920x1088@30f  |       N/A       | 1920x1088@30f |
|    RK3328     |  1920x1088@30f  |  1920x1088@30f  | 1920x1088@30f |
|    RK3288     |  1920x1088@30f  |       N/A       | 1920x1088@30f |
|    RK3326     |  1920x1088@30f  |       N/A       | 1920x1088@30f |
|     PX30      |  1920x1088@30f  |       N/A       | 1920x1088@30f |
|    RK312X     |  1920x1088@30f  |       N/A       | 1920x1088@30f |

### SDK Profile introduction (Profile)

Including software testing, benchmarks, etc. on Rockchip Linux platform.

```
docs/en/Linux/Profile/
├── Rockchip_Developer_Guide_Linux_PCBA_EN.pdf
├── Rockchip_Introduction_Linux_Benchmark_KPI_EN.pdf
├── Rockchip_Introduction_Linux_PLT_EN.pdf
└── Rockchip_User_Guide_Linux_Software_Test_EN.pdf
```

### OTA Upgrade (Recovery)

An introduction to the recovery development process and upgrade during OTA upgrade of Rockchip Linux platform.

```
docs/en/Linux/Recovery/
├── Rockchip_Developer_Guide_Linux_Recovery_EN.pdf
└── Rockchip_Developer_Guide_Linux_Upgrade_EN.pd
```

### Security Solution (Security)

Introduction to the secure boot solution of Securboot and TEE on Rockchip Linux platform

```
docs/en/Linux/Security/
└── Rockchip_Developer_Guide_Linux_Secure_Boot_EN.pdf
```

### System Development (System)

Introduction to the porting and development guide for Debian and other third-party systems on the Rockchip Linux platform

```
docs/en/Linux/System/
├── Rockchip_Developer_Guide_Buildroot_EN.pdf
├── Rockchip_Developer_Guide_Debian_EN.pdf
└── Rockchip_Developer_Guide_Third_Party_System_Adaptation_EN.pdf
```

### UEFI Booting (UEFI)

Introduction to UEFI boot solution on Rockchip Linux platform.

```
docs/en/Linux/Uefi/
└── Rockchip_Developer_Guide_UEFI_EN.pdf
```

### Network Module (RKWIFIBT)

Introduction to the development of WIFI, BT, etc. on Rockchip Linux platform.

```
docs/en/Linux/Wifibt/
├── Rockchip_Developer_Guide_Linux_WIFI_BT_EN.pdf
└── The-Latest-Wifibt-Documents-Link.txt

```

## Chip Platform Related Documents (Socs)

Refer to the documentation in the `<SDK>/docs/en/<chipset_name>` directory. Normally, it will include the release notes, quick start, software development guide, hardware development guide, Datasheet, etc.

### Release Note

It contains an overview of the chip, supported main functions, instructions for obtaining the SDK, etc.

Reference document is in the `<SDK>/docs/en/<chipset_name>` directory:
`Rockchip_<chipset_name>_Linux_SDK_Release_<version>_EN.pdf`

### Quick Start

Normally, it will include software and hardware development guide, SDK build, SDK pre-build firmware, SDK burning, etc.
Please refer to the documentation in the `<SDK>/docs/en/<chipset_name>/Quick-start` directory.

### Software Development Guide

In order to help developers get familiar with the development and debugging of the SDK faster, the
 "Rockchip_Developer_Guide_Linux_Software_EN.pdf" document can be obtained from the <SDK>/docs/en/<chip_name>/ directory and will be continuously improved and updated.

## Datasheet

In order to help developers get familiar with chip development and debugging faster, a chip datasheet is released with the SDK.

Please refer to the documentation in the `<SDK>/docs/en/<chipset_name>/Datasheet` directory.

### Hardware Development Guide

Rockchip platform will have corresponding hardware reference documents released with the SDK software package. The hardware user guide mainly introduces the basic features, hardware interfaces, and usage methods of the reference hardware board. It aims to assist developers in using the EVB more quickly and accurately, and in developing related products. For more details, please refer to the documents in the `<SDK>/docs/en/<chip_name>/Hardware` directory.

## Other Documents (Others)

For other reference documents, such as Repo mirror environment construction, Rockchip SDK application and synchronization guide, Rockchip Bug system usage guide, etc., please refer to the documents in the `<SDK>/docs/en/Others` directory.

```
docs/en/Others/
├── Rockchip_Developer_Guide_Repo_Mirror_Server_Deploy_EN.pdf
├── Rockchip_User_Guide_Bug_System_EN.pdf
└── Rockchip_User_Guide_SDK_Application_And_Synchronization_EN.pdf
```

## Documents List (docs_list_en.txt)

Please refer to the document in the <SDK>/docs/en/docs_list_en.txt` directory.

```
├── Common
├── Linux
├── Others
├── Rockchip_Developer_Guide_Linux_Software_EN.pdf
├──<chipset_name>
└── docs_list_en.txt
```
