[TOC]

# 文档说明

Rockchip Linux SDK中在 docs ⽬录划分为中⽂⽂档（ cn ）、英⽂⽂档（ en ）和软件物料清单 (sbom) 等⽬录。其中 sbom 包含如下：

```
sbom/
├── buildroot
│   ├── copyright
│   │   ├── BUILDROOT_README
│   │   ├── host-software_copyright_list.csv
│   │   └── software_copyright_list.csv
│   └── cve
│       └── software_vulnerability_check_list.html
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

LICENSE 是 Rockchip 发布的⽂档授权申明。sbom是软件物料清单，详细列出了软件中包含的**开源组件、第三方库、版本信息、许可证、依赖关系、漏洞关联信息**等内容

host-software_copyright_list.csv、software_copyright_list.csv 和 BUILDROOT_README是 Buildroot 系统默认编译的第三⽅包 license 详细说明，software_vulnerability_check_list.html是Buildroot用于生成当前配置下所有软件包的详细信息报告，并检测已知 CVE 漏洞及上游版本更新状态。

随 Rockchip Linux SDK 发布的文档旨在帮助开发者快速上手开发及调试，文档中涉及的内容并不能涵盖所有的开发知识和问题。文档列表也会不断更新，如有文档上的疑问及需求，请联系我们的FAE窗口<fae@rock-chips.com>。
Rockchip Linux SDK 中在 docs 目录分为中文（cn）和英文（en）。其中中文目录附带了 Common（通用开发指导文档）、Socs（芯片平台相关文档）、Linux （Linux 系统开发相关文档）、Others（其他参考文档）、docs_list_cn.txt (docs文件目录结构），其具体介绍如下：

## 通用开发指导文档 (Common)

详见 `<SDK>/docs/cn/Common` 各子目录下的文档。

### 多核异构系统开发指南(AMP)

详见 `<SDK>/docs/cn/Common/AMP` 目录，多核异构系统是瑞芯微提供的一套通用多核异构系统解决方案，目前已经广泛应用于电力、工控等行业应用和扫地机等消费级产品中。

### 音频模块文档 (AUDIO)

包含音频模块的相关开发文档。具体文档如下：

```
docs/cn/Common/AUDIO/
├── Rockchip_Developer_Guide_Audio_CN.pdf
└── Rockchip_Developer_Guide_Linux_RV_Series_ACodec_CN.pdf
```

### 外设支持列表 (AVL)

详见 `<SDK>/docs/cn/Common/AVL` 目录，其包含DDR/eMMC/FLASH/UFS/WIFI-BT等支持列表， 其支持列表实时更新在redmine上，链接如下：

```
https://redmine.rockchip.com.cn/projects/fae/documents
```

#### DDR支持列表

Rockchip 平台 DDR 颗粒支持列表，详见 `<SDK>/docs/cn/Common/AVL` 目录下《Rockchip_DDR_Approved_Vendor_List_xxx.pdf》，下表表示DDR的支持程度，只建议选用√、T/A标示的颗粒。
表 1‑1 Rockchip DDR Support Symbol

| **Symbol** | **Description**                                              |
| ---------- | :----------------------------------------------------------- |
| √          | Fully Tested and Mass production                             |
| T/A        | Fully Tested and Applicable                                  |
| S/A        | Sample Tested and Applicable, but there is a risk of small margins or others that require mass production to validation. |
| N/A        | Not Applicable                                               |

#### eMMC支持列表

Rockchip 平台 eMMC 颗粒支持列表，详见  `<SDK>/docs/cn/Common/AVL` 目录下《Rockchip_EMMC_Approved_Vendor_List_xxx.pdf》，下表中所标示的EMMC支持程度表，只建议选用√、T/A标示的颗粒。
表 1‑2 Rockchip EMMC Support Symbol

| **Symbol** | **Description**                                         |
| ---------- | :------------------------------------------------------ |
| √          | Fully Tested , Applicable and Mass Production           |
| T/A        | Fully Tested , Applicable and Ready for Mass Production |
| D/A        | Datasheet Applicable,Need Sample to Test                |
| N/A        | Not Applicable                                          |

- **高性能eMMC颗粒的选取**

为了提高系统性能，需要选取高性能的 eMMC 颗粒。请在挑选 eMMC 颗粒前，参照 Rockchip 提供支持列表中的型号，重点关注厂商 Datashet 中 performance 一章节。
参照厂商大小以及 eMMC 颗粒读写的速率进行筛选。建议选取顺序读速率>200MB/s、顺序写速率>40MB/s。
如有选型上的疑问，也可直接联系Rockchip FAE窗口<fae@rock-chips.com>。

![eMMC](resources/emmc.png)
​																					图1‑1 eMMC Performance示例

#### Flash支持列表

关于 Rockchip 平台 SPI Nor、SPI NAND、SLC 等 Flash 器件的支持情况，请查阅 `<SDK>/docs/cn/Common/AVL` 目录中的《Rockchip_Flash_Approved_Vendor_List_xxx.pdf》。该文档包含各型号 Flash 的支持与验证情况，适用于器件选型和设计评估。下表中所标示的 Flash支持程度表，只建议选用√、T/A标示的颗粒。

表 1‑3 Rockchip SPI Nor、SPI NAND、SLC Support Symbol

| **Symbol** | **Description**                                        |
| ---------- | :----------------------------------------------------- |
| √          | Fully Tested, Applicable and Mass Production           |
| T/A        | Fully Tested, Applicable and Ready for Mass Production |
| D/A        | Datasheet Applicable, Need Sample to Test              |
| N/A        | Not Applicable                                         |

#### UFS支持列表

Rockchip 平台 UFS 支持列表，详见`<SDK>/docs/Common/AVL`目录下
《Rockchip_UFS_Approved_Vendor_List_xxx.pdf》，
文档中有标注 UFS 的型号，可供选型。下表中所标示的 UFS 支持程度表，只建议选用√、T/A标示的颗粒。

表 1‑5 Rockchip UFS Support Symbol

| **Symbol** | **Description**                                         |
| ---------- | :------------------------------------------------------ |
| √          | Fully Tested , Applicable and Mass Production           |
| T/A        | Fully Tested , Applicable and Ready for Mass Production |
| D/A        | Datasheet Applicable,Need Sample to Test                |
| N/A        | Not Applicable                                          |

#### WIFI/BT支持列表

Rockchip 平台 WIFI/BT 支持列表，详见`<SDK>/docs/cn/Common/AVL`目录下《Rockchip_Support_List_Linux_WiFi_BT_Ver2.0_20250619.pdf》，文档列表中为目前Rockchip平台上大量测试过的WIFI/BT芯片列表，建议按照列表上的型号进行选型。如果有其他WIFI/BT芯片调试，需要WIFI/BT芯片原厂提供对应内核驱动程序。

如有选型上的疑问，建议可以与Rockchip FAE窗口<fae@rock-chips.com>联系。

#### Camera支持列表

Rockchip 平台 Camera 支持列表，详见[Camera模组支持列表](https://redmine.rock-chips.com/projects/rockchip_camera_module_support_list/camera)，在线列表中为目前Rockchip平台上大量测试过的Camera Module 列表，建议按照列表上的型号进行选型。

如有选型上的疑问，建议可以与Rockchip FAE窗口<fae@rock-chips.com>联系。

### CAN模块文档 (CAN)

CAN(Controller Area Network) 总线，即控制器局域网总线，是一种有效分布式控制或实时控制的串行通信网络。以下文档主要介绍CAN驱动开发、通信测试工具、常用命令接口和常见问题等。

```
docs/cn/Common/CAN/
├── Rockchip_Developer_Guide_CAN_FD_CN.pdf
└── Rockchip_Developer_Guide_Can_CN.pdf
```

### 时钟模块文档 (CLK)

本文档主要介绍 Rockchip 平台Clock、GPIO、PLL展频等时钟开发

```
docs/cn/Common/CLK/
├── Rockchip_Developer_Guide_Clock_CN.pdf
├── Rockchip_Developer_Guide_Gpio_Output_Clocks_CN.pdf
└── Rockchip_Developer_Guide_Pll_Ssmod_Clock_CN.pdf
```

### CRYPTO模块文档 (CRYPTO)

以下文档主要介绍 Rockchip Crypto 和 HWRNG(TRNG) 的开发，包括驱动开发与上层应用开发。

```
docs/cn/Common/CRYPTO/
└── Rockchip_Developer_Guide_Crypto_HWRNG_CN.pdf
```

### DDR模块文档 (DDR)

该模块文档主要包含 Rockchip 平台DDR开发指南、DDR问题排查、DDR颗粒验证流程、DDR布板说明、DDR带宽工具使用、DDR DQ眼图工具等

```
docs/cn/Common/DDR/
├── Rockchip-Developer-Guide-DDR-CN.pdf
```

### 调试模块文档 (DEBUG)

该模块文档主要包含 Rockchip 平台Eclipse_OpenOCD等调试工具使用介绍。

```
docs/cn/Common/DEBUG/
└── Rockchip_Developer_Guide_GNU_MCU_Eclipse_OpenOCD_CN.pdf
```

### 显示模块文档 (DISPLAY)

该模块文档主要包含 Rockchip 平台DRM、DP、HDMI、LVDS、MIPI、RGB、RK628等显示模块的开发文档。

```
docs/cn/Common/DISPLAY/
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

### DMSC模块文档 (DSMC)

该模块文档主要包含 Rockchip 平台双倍速率串行存储器控制器的开发文档。Double Data Rate Serial Memory Controller（DSMC），双倍速率串行存储器控制器，通过命令、地址、
数据线分时复用，数据上下沿传输，具有少引脚数、高带宽的特点。

```
docs/cn/Common/DSMC/
├── Rockchip_Developer_Guide_DSMC_CN.pdf
└── Rockchip_Developer_Guide_SLAVE_DSMC_CN.pdf
```

### 动态调整频率和电压模块文档 (DVFS)

该模块文档主要包含 Rockchip 平台CPU/GPU/DDR等动态调整频率和电压模块文档。

Cpufreq和Devfreq 是内核开发者定义的一套支持根据指定的 governor 动态调整频率和电压的框架模型，它能有效地降低的功耗，同时兼顾性能。

```
docs/cn/Common/DVFS/
├── Rockchip_Developer_Guide_CPUFreq_CN.pdf
└── Rockchip_Developer_Guide_Devfreq_CN.pdf
```

### FLEXBUS模块文档 (FLEXBUS)

该模块文档主要包含 Rockchip平台FLEXBUS的相关开发文档。

```
docs/cn/Common/FLEXBUS/
├── Rockchip_Developer_Guide_Linux_FLEXBUS_ADC_and_DAC_MODE_CN.pdf
├── Rockchip_Developer_Guide_Linux_FLEXBUS_CN.pdf
└── Rockchip_Developer_Guide_Linux_FLEXBUS_FSPI_MODE_CN.pdf
```

### 以太网模块文档 (GMAC)

该模块文档主要包含 Rockchip平台以太网 GMAC 接口包含DPDK相关开发文档。

```
docs/cn/Common/GMAC/
├── Rockchip_Developer_Guide_Linux_GMAC_CN.pdf
├── Rockchip_Developer_Guide_Linux_GMAC_DPDK_CN.pdf
├── Rockchip_Developer_Guide_Linux_GMAC_Mode_Configuration_CN.pdf
├── Rockchip_Developer_Guide_Linux_GMAC_RGMII_Delayline_CN.pdf
└── Rockchip_Developer_Guide_Linux_MAC_TO_MAC_CN.pdf
```

### HDMI-IN模块文档 (HDMI-IN)

该模块文档主要包含 Rockchip平台HDMI-IN 接口的相关开发文档。

```
docs/cn/Common/HDMI-IN/
├── Rockchip_Developer_Guide_HDMI_IN_Based_On_CameraHal3_CN.pdf
└── Rockchip_Developer_Guide_HDMI_RX_CN.pdf
```

### I2C模块文档 (I2C)

该模块文档主要包含 Rockchip平台I2C 接口的相关开发文档。

```
docs/cn/Common/I2C/
└── Rockchip_Developer_Guide_I2C_CN.pdf
```

### IO电源域模块文档 (IO-DOMAIN)

Rockchip平台一般 IO 电源的电压有 1.8v，3.3v，2.5v，5.0v 等，有些 IO 同时支持多种电压，io-domain 就是配置 IO 电源域的寄存器，依据真实的硬件电压范围来配置对应的电压寄存器，否则无法正常工作；

```
docs/cn/Common/IO-DOMAIN/
└── Rockchip_Developer_Guide_Linux_IO_DOMAIN_CN.pdf
```

### IOMMU模块文档 (IOMMU)

主要介绍Rockchip平台IOMMU用于32位虚拟地址和物理地址的转换，它带有读写控制位，能产生缺页异常以及总线异常中断。

```
docs/cn/Common/IOMMU/
└── Rockchip_Developer_Guide_Linux_IOMMU_CN.pdf
```

### 图像模块文档 (ISP)

ISP1.X主要适用于RK3399/RK3288/PX30/RK3326/RK1808等
ISP21主要适用于RK3566_RK3568等
ISP30主要适用于RK3588等
ISP32-lite主要适用于RK3562等
ISP35主要适用于RV1126B等
ISP39主要适用于RK3576等

包含ISP开发文档、VI驱动开发文档、IQ Tool开发文档、调试文档和颜色调试文档。具体文档如下：

```
docs/cn/Common/ISP/
└── The-Latest-Camera-Documents-Link.txt
```

文档参考：https://redmine.rock-chips.com/documents/53

> **说明：**
> RK3288/RK3399/RK3326/RK1808 Linux(kernel-4.4) rkisp1 driver、sensor driver、vcm driver 参考文档: 《RKISP_Driver_User_Manual_v1.3_20190919》
> RK3288/RK3399/RK3326/RK1808 Linux(kernel-4.4) camera_engine_rkisp（3A库）参考文档：《camera_engine_rkisp_user_manual_v2.0》
> RK3288/RK3399/RK3326/RK1808 Linux(kernel-4.4) camera_engine_rkisp v2.0.0版本及其以上版本IQ效果文件参数参考文档：《RKISP1_IQ_Parameters_User_Guide_v1.0_20190606》

### MCU模块文档 (MCU)

主要介绍Rockchip平台上MCU开发指南。

```
docs/cn/Common/MCU/
└── Rockchip_RK3399_Developer_Guide_MCU_CN.pdf
```

### MMC模块文档 (MMC)

主要介绍Rockchip平台上SDIO、SDMMC、eMMC等接口开发指南。

```
docs/cn/Common/MMC/
├── Rockchip_Developer_Guide_SDMMC_SDIO_eMMC_CN.pdf
└── Rockchip_Developer_Guide_SD_Boot_CN.pdf
```

### 内存模块文档 (MEMORY)

主要介绍Rockchip平台上CMA、DMABUF等内存模块机制处理。

```
docs/cn/Common/MEMORY/
├── Rockchip_Developer_Guide_Linux_CMA_CN.pdf
├── Rockchip_Developer_Guide_Linux_DMABUF_CN.pdf
├── Rockchip_Developer_Guide_Linux_Meminfo_CN.pdf
└── Rockchip_Developer_Guide_Linux_Memory_Allocator_CN.pdf
```

### MPP模块文档 (MPP)

主要介绍Rockchip平台上MPP开发说明。

```
docs/cn/Common/MPP/
└── Rockchip_Developer_Guide_MPP_CN.pdf
```

### NPU模块文档 (NPU)

RKNN软件栈可帮助用户快速将AI模型部署至Rockchip芯片。整体框架如下：

   <center class="half">
        <div style="background-color:#ffffff;">
        <img src="resources/framework.png" title="RKNN"/>
    </center>
使用RKNPU前，用户需先在计算机运行RKNN-Toolkit2工具，将训练好的模型转换为RKNN格式模型，随后通过RKNN C API或Python API在开发板上进行推理。

#### RKNN-TOOLKIT2

RKNN-Toolkit2是在PC上进行RKNN模型生成及性能评估的开发套件。
RKNN-Toolkit-Lite2是Rockchip NPU平台提供Python编程接口，协助用户部署RKNN模型并加速AI应用实现。

开发套件在 `external/rknn-toolkit2` 目录下，主要用来实现模型转换、优化、量化、推理、性能评估和精度分析等一系列功能。

基本功能如下：

| 功能     | 说明 |
| :------------: | :----------- |
| 模型转换 | 支持Pytorch / TensorFlow / TFLite / ONNX / Caffe / Darknet的浮点模型<br/>支持Pytorch / TensorFlow / TFLite的量化感知模型（QAT）<br/>支持动态输入模型（动态化/原生动态）<br/>支持大模型      |
| 模型优化 | 常量折叠/ OP矫正/ OP Fuse&Convert / 权重稀疏化/ 模型剪枝  |
| 模型量化 | 支持量化类型：非对称i8/ fp16 <br/>支持Layer / Channel量化方式；Normal / KL/  MMSE量化算法<br/>支持混合量化以平衡性能和精度     |
| 模型推理 | 支持在PC上通过模拟器进行模型推理<br/>支持将模型传到NPU硬件平台上完成模型推理（连板推理）<br/>支持批量推理，支持多输入模型     |
| 模型评估     | 支持模型在NPU硬件平台上的性能和内存评估   |
| 精度分析 | 支持量化精度分析功能（模拟器/ NPU）  |
| 附加功能     | 支持版本/设备查询功能等    |

#### RKNN Runtime

RKNN Runtime的开发说明在工程目录 `external/rknpu2`下，用于推理RKNN-Toolkit2生成的rknn模型。为Rockchip NPU平台提供C/C++编程接口，助力用户部署RKNN模型并加速AI应用落地。

具体使用说明请参考当前 `rknpu2/` 的目录文档：

```
├── 01_Rockchip_RKNPU_Quick_Start_RKNN_SDK_V2.3.2_CN.pdf
├── 02_Rockchip_RKNPU_User_Guide_RKNN_SDK_V2.3.2_CN.pdf
├── 03_Rockchip_RKNPU_API_Reference_RKNN_Toolkit2_V2.3.2_CN.pdf
├── 04_Rockchip_RKNPU_API_Reference_RKNNRT_V2.3.2_CN.pdf
├── 05_RKNN_Compiler_Support_Operator_List_V2.3.2.pdf
├── RKNNToolKit2_API_Difference_With_Toolkit1-2.3.2.md
├── RKNNToolKit2_OP_Support-2.3.2.md
...
```

#### RKNN Driver

RKNN内核驱动负责与NPU硬件交互，已集成于Rockchip内核代码`drivers/rknpu`目录中。

#### RKNN LLM

RKNN LLM 是Rockchip面向大语言模型（Large Language Model, LLM）场景优化的推理框架，旨在帮助用户高效部署和运行大规模预训练语言模型（如 LLaMA、PaLM、ChatGLM 等）在Rockchip自研的 NPU硬件平台上。

具体使用说明请参考当前 `rknpu2/` 的目录文档：

```
├── Rockchip_RKLLM_SDK_CN_1.2.3.pdf
```

### NVM模块文档 (NVM)

主要介绍Rockchip平台上启动流程，对存储进行配置和调试、OTP OEM 区域烧写等安全接口方面。

```
docs/cn/Common/NVM/
├── RK_Vendor_Storage_Application_Note.pdf
├── Rockchip_Application_Notes_Power_Loss_Protection_CN.pdf
├── Rockchip_Application_Notes_Storage_CN.pdf
├── Rockchip_Developer_FAQ_Storage_CN.pdf
├── Rockchip_Developer_Guide_Dual_Storage_CN.pdf
├── Rockchip_Developer_Guide_Linux_Flash_Open_Source_Solution_CN.pdf
├── Rockchip_Developer_Guide_SATA_CN.pdf
└── Rockchip_Developer_Guide_UFS_CN.pdf
```

### PCIe模块文档 (PCIe)

主要介绍Rockchip平台上PCIe的开发说明。

```
docs/cn/Common/PCIe/
├── Rockchip_Developer_Guide_PCIE_EP_Standard_Card_APIs_CN.pdf
├── Rockchip_Developer_Guide_PCIE_EP_Standard_Card_CN.pdf
├── Rockchip_Developer_Guide_PCIe_CN.pdf
├── Rockchip_Developer_Guide_PCIe_EP_CN.pdf
├── Rockchip_Developer_Guide_PCIe_Performance_CN.pdf
├── Rockchip_PCIe_Virtualization_Developer_Guide_CN.pdf
└── Rockchip_RK3399_Developer_Guide_PCIe_CN.pdf
```

### 性能模块文档 (PERF)

主要介绍Rockchip平台上PERF性能相关分析说明。

```
docs/cn/Common/PERF/
├── Rockchip_Developer_Guide_Linux_RealTime_Performance_Test_Report_CN.pdf
└── Rockchip_Quick_Start_Linux_Performance_Analyse_CN.pdf
```

### GPIO模块文档 (PINCTRL)

主要介绍Rockchip平台上PIN-CTRL驱动及DTS使用方法。

```
docs/cn/Common/PINCTRL/
└── Rockchip_Developer_Guide_Linux_Pinctrl_CN.pdf
```

### 电源模块文档 (PMIC)

主要介绍Rockchip平台上RK805、RK806、RK808、RK809、RK817等PMIC的开发指南。

```
docs/cn/Common/PMIC/
├── Rockchip_RK801_Developer_Guide_CN.pdf
├── Rockchip_RK805_Developer_Guide_CN.pdf
├── Rockchip_RK806_Developer_Guide_CN.pdf
├── Rockchip_RK808_Developer_Guide_CN.pdf
├── Rockchip_RK809_Developer_Guide_CN.pdf
├── Rockchip_RK816_Developer_Guide_CN.pdf
├── Rockchip_RK817_Developer_Guide_CN.pdf
├── Rockchip_RK818_Developer_Guide_CN.pdf
├── Rockchip_RK818_RK816_Developer_Guide_Fuel_Gauge_CN.pdf
└── Rockchip_RK818_RK816_Introduction_Fuel_Gauge_Log_CN.pdf
```

### 功耗模块文档 (POWER)

主要介绍Rockchip平台上芯片功耗的一些基础概念和优化方法。

```
docs/cn/Common/POWER/
└── Rockchip_Developer_Guide_Power_Analysis_CN.pdf
```

### 脉宽调制模块文档 (PWM)

主要介绍Rockchip平台上PWM开发指南。

```
docs/cn/Common/PWM
└── Rockchip_Developer_Guide_Linux_PWM_CN.pdf
```

### RGA模块文档 (RGA)

主要介绍Rockchip平台上RGA开发指南。

```
docs/cn/Common/RGA/
├── Rockchip_Developer_Guide_RGA_CN.pdf
└── Rockchip_FAQ_RGA_CN.pdf
```

### SARADC模块文档 (SARADC)

主要介绍Rockchip平台上SARADC开发指南。

```
docs/cn/Common/SARADC/
└── Rockchip_Developer_Guide_Linux_SARADC_CN.pdf
```

### 安全模块文档 (SECURITY)

主要介绍Rockchip平台上安全模块开发指南。

```
docs/cn/Common/SECURITY/
├── Rockchip_Developer_Guide_Anti_Copy_Board_CN.pdf
├── Rockchip_Developer_Guide_OTP_CN.pdf
└── Rockchip_Developer_Guide_TEE_SDK_CN.pdf
```

### SPI模块文档 (SPI)

主要介绍Rockchip平台上SPI开发指南。

```
docs/cn/Common/SPI/
└── Rockchip_Developer_Guide_Linux_SPI_CN.pdf
```

### 温控模块文档 (THERMAL)

主要介绍Rockchip平台上Thermal开发指南。

```
docs/cn/Common/THERMAL/
└── Rockchip_Developer_Guide_Thermal_CN.pdf
```

### 工具类模块文档 (TOOL)

主要介绍Rockchip平台上分区、量产烧入、厂线烧入等工具的使用说明。

```
docs/cn/Common/TOOL/
├── Rockchip_Introduction_Partition_CN.pdf
└── Rockchip_User_Guide_Production_For_Firmware_Download_CN.pdf
```

### 安全模块文档 (TRUST)

主要介绍Rockchip平台上TRUST、休眠唤醒等功能说明。

```
docs/cn/Common/TRUST/
├── Rockchip_Developer_Guide_Trust_CN.pdf
├── Rockchip_RK3308_Developer_Guide_System_Suspend_CN.pdf
├── Rockchip_RK3399_Developer_Guide_System_Suspend_CN.pdf
├── Rockchip_RK3506_Developer_Guide_System_Suspend_CN.pdf
├── Rockchip_RK356X_Developer_Guide_System_Suspend_CN.pdf
├── Rockchip_RK3576_Developer_Guide_System_Suspend_CN.pdf
└── Rockchip_RK3588_Developer_Guide_System_Suspend_CN.pdf
```

### 串口模块文档 (UART)

主要介绍Rockchip平台上串口功能和调试说明。

```
docs/cn/Common/UART/
├── Rockchip_Developer_Guide_UART_CN.pdf
└── Rockchip_Developer_Guide_UART_FAQ_CN.pdf
```

### UBOOT模块文档 (UBOOT)

主要介绍Rockchip平台上U-Boot相关开发说明。

```
docs/cn/Common/UBOOT/
└── Rockchip_Developer_Guide_UBoot_Nextdev_CN.pdf
```

### USB模块文档 (USB)

主要介绍Rockchip平台上USB开发指南、USB 信号测试和调试工具等相关开发说明。

```
docs/cn/Common/USB/
├── Rockchip_Developer_Guide_Linux_USB_Initialization_Log_Analysis_CN.pdf
├── Rockchip_Developer_Guide_Linux_USB_Performance_Analysis_CN.pdf
├── Rockchip_Developer_Guide_USB2_Compliance_Test_CN.pdf
├── Rockchip_Developer_Guide_USB_CN.pdf
├── Rockchip_Developer_Guide_USB_FFS_Test_Demo_CN.pdf
├── Rockchip_Developer_Guide_USB_Gadget_UAC_CN.pdf
├── Rockchip_Developer_Guide_USB_SQ_Test_CN.pdf
├── Rockchip_Introduction_USB_SQ_Tool_CN.pdf
├── Rockchip_RK3399_Developer_Guide_USB_CN.pdf
├── Rockchip_RK356x_Developer_Guide_USB_CN.pdf
├── Rockchip_RK3576_Developer_Guide_USB_CN.pdf
├── Rockchip_RK3588_Developer_Guide_USB_CN.pdf
├── Rockchip_Trouble_Shooting_Linux4.19_USB_Gadget_UVC_CN.pdf
└── Rockchip_Trouble_Shooting_Linux_USB_Host_UVC_CN.pdf
```

### 看门狗模块文档 (WATCHDOG)

主要介绍Rockchip平台上Watchdog开发说明。

```
docs/cn/Common/WATCHDOG/
└── Rockchip_Developer_Guide_Linux_WDT_CN.pdf
```

## Linux系统开发文档 (Linux)

详见`<SDK>/docs/cn/Linux` 目录下的文档。

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

### 应用指南（ApplicationNote）

主要介绍Rockchip平台上应用相关开发说明， 比如RKIPC、ROS、USB、EtherCAT等

```
docs/cn/Linux/ApplicationNote/
├── Rockchip_Developer_Guide_Linux_RKIPC_CN.pdf
├── Rockchip_Instruction_Linux_ROS2_CN.pdf
├── Rockchip_Instruction_Linux_ROS_CN.pdf
├── Rockchip_Quick_Start_Linux_USB_Gadget_CN.pdf
└── Rockchip_Use_Guide_Linux_EtherCAT_IgH_CN.pdf
```

### 音频相关开发（Audio）

主要介绍Rockchip平台上自研麦克风的音频算法和Pulseaudio。

```
docs/cn/Linux/Audio/
├── Algorithms
└── Rockchip_Developer_Guide_PulseAudio_CN.pdf
```

### 摄像头相关开发（Camera）

主要介绍Rockchip平台上MIPI/CSI Camera和结构光开发指南。

```
docs/cn/Linux/Camera/
├── Rockchip_Developer_Guide_Camera_Driver_CN.pdf
├── Rockchip_Developer_Guide_Linux4.4_Camera_CN.pdf
├── Rockchip_Developer_Guide_Linux_RMSL_CN.pdf
├── Rockchip_Trouble_Shooting_Linux4.4_Camera_CN.pdf
└── Rockchip_Trouble_Shooting_Linux5.10_Camera_CN.pdf
```

### DPDK相关开发（Camera）

主要介绍Rockchip平台上DPDK开发指南。

```
docs/cn/Linux/DPDK/
└── Rockchip_Developer_Guide_Linux_DPDK_CN.pdf
```

### 容器相关开发（Docker）

主要介绍Rockchip平台上Debian/Buildroot等第三方系统的Docker搭建和开发。

```
docs/cn/Linux/Docker/
├── Rockchip_Developer_Guide_Debian_Docker_CN.pdf
├── Rockchip_Developer_Guide_Linux_Docker_Deploy_CN.pdf
└── Rockchip_User_Guide_SDK_Docker_CN.pdf
```

### 显示相关开发（Graphics）

主要介绍Rockchip平台上 Linux显示相关开发。

```
docs/cn/Linux/Graphics/
├── Rockchip_Developer_Guide_Buildroot_Weston_CN.pdf
├── Rockchip_Developer_Guide_Linux_Graphics_CN.pdf
└── Rockchip_Developer_Guide_Linux_LVGL_CN.pdf
```

### 多媒体（Multimedia）

Rockchip Linux平台上视频编解码大概的流程

```
vpu_service  -->  mpp --> gstreamer/rockit --> app
vpu_service: 驱动
mpp: rockchip平台的视频编解码中间件,相关说明参考mpp文档
gstreamer/rockit: 对接app等组件
```

目前Debian/buildroot系统默认用gstreamer来对接app和编解码组件。

目前主要开发文档如下：

```
docs/cn/Linux/Multimedia/
├── Rockchip_Developer_Guide_Linux_RKADK_CN.pdf
├── Rockchip_User_Guide_Linux_Gstreamer_CN.pdf
└── Rockchip_User_Guide_Linux_Rockit_CN.pdf
```

编解码功能, 也可以直接通过mpp提供测试接口进行测试 (比如mpi_dec_test\mpi_enc_test...)
mpp源码参考 `<SDK>/external/mpp/`
测试demo参考: `<SDK>/external/mpp/test` 具体参考SDK文档 `Rockchip_Developer_Guide_MPP_CN.pdf`

Rockchip芯片比如RK3588 支持强大的多媒体功能：

- 支持H.265/H.264/AV1/VP9/AVS2视频解码， 最高8K60FPS， 同时支持1080P 多格式视频解码 (H.263、MPEG1/2/4、VP8、JPEG)
- 支持8K H264/H265 视频编码和1080P VP8、JPEG 视频编码
- 视频后期处理器：反交错、去噪、边缘/细节/色彩优化。

以下列举平台常见芯片编解码能力的标定规格。

> **说明：**
> 测试最大规格与众多因素相关，因此可能出现不同芯片相同解码 IP 规格能力不同。
> 芯片的支持情况,实际搭配不同系统可能支持格式和性能会有所不同。

- **解码能力规格表**

| **芯片名称**  |    **H264**     |    **H265**     |     **VP9**     |    **JPEG**    |
| :-----------: | :-------------: | :-------------: | :-------------: | :------------: |
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

- **编码能力规格表**

| **芯片名称**  |    **H264**     |    **H265**     |    **VP8**    |
| :-----------: | :-------------: | :-------------: | :-----------: |
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

### SDK附件内容简介（Profile）

主要介绍Rockchip Linux平台上软件测试，benchmark等介绍。

```
docs/cn/Linux/Profile/
├── Rockchip_Developer_Guide_Linux_PCBA_CN.pdf
├── Rockchip_Introduction_Linux_Benchmark_KPI_CN.pdf
├── Rockchip_Introduction_Linux_PLT_CN.pdf
└── Rockchip_User_Guide_Linux_Software_Test_CN.pdf
```

### OTA升级（Recovery）

主要介绍Rockchip Linux平台 OTA 升级时的 recovery 开发流程和升级介绍。

```
docs/cn/Linux/Recovery/
├── Rockchip_Developer_Guide_Linux_Recovery_CN.pdf
└── Rockchip_Developer_Guide_Linux_Upgrade_CN.pdf
```

### 安全方案（Security）

主要介绍Rockchip Linux平台上Securbeoot和TEE的安全启动方案。

```
docs/cn/Linux/Security/
└── Rockchip_Developer_Guide_Linux_Secure_Boot_CN.pdf
```

### 系统开发（System）

主要介绍Rockchip Linux平台上Debian等第三方系统的移植和开发指南。

```
docs/cn/Linux/System/
├── Rockchip_Developer_Guide_Buildroot_CN.pdf
├── Rockchip_Developer_Guide_Debian_CN.pdf
└── Rockchip_Developer_Guide_Third_Party_System_Adaptation_CN.pdf
```

### UEFI启动（UEFI）

主要介绍Rockchip Linux平台上的UEFI启动方案。

```
docs/cn/Linux/Uefi/
└── Rockchip_Developer_Guide_UEFI_CN.pdf
```

### 网络模块（RKWIFIBT）

主要介绍Rockchip Linux平台上WIFI、BT等开发。

```
docs/cn/Linux/Wifibt/
├── Latest-Release-Wifibt-Link.txt
└── Rockchip_Developer_Guide_Linux_WIFI_BT_CN.pdf
```

## 芯片平台相关文档 (Socs)

详见 `<SDK>/docs/cn/<chipset_name>` 目录下的文档。正常会包含该芯片的发布说明、芯片快速入门、软件开发指南、硬件开发指南、Datasheet等。

### 发布说明

里面包含芯片概述、支持的主要功能、SDK获取说明等。

详见 `<SDK>/docs/cn/<chipset_name>` 目录下的文档
`Rockchip_<chipset_name>_Linux_SDK_Release_<version>_CN.pdf`

### 快速入门

正常会包含软硬件开发指南、SDK编译、SDK预编译固件、SDK烧写等内容。
详见 `<SDK>/docs/cn/<chipset_name>/Quick-start` 目录下的文档。

### 软件开发指南

为帮助开发工程师更快上手熟悉 SDK 的开发调试工作，随 SDK 发布
《 Rockchip_Developer_Guide_Linux_Software_CN.pdf 》，可在 <SDK>/docs/cn/<chip_name>/ 下获取，并会不断完善更新。

## 芯片资料

为帮助开发工程师更快上手熟悉芯片的开发调试工作，随 SDK 发布芯片手册。
详见 `<SDK>/docs/cn/<chipset_name>/Datasheet` 目录下的文档。

### 硬件开发指南

Rockchip 平台会有对应的硬件参考文档随 SDK 软件包一起发布。硬件用户使用指南主要介绍参考硬件板基本功能特点、硬件接口和使用方法。旨在帮助相关开发人员更快、更准确地使用该 EVB，进行相关产品的应用开发，详见`<SDK>/docs/cn/<chip_name>/Hardware` 目录下相关文档 。

## 其他参考文档 (Others)

其他参考文档，比如Repo mirror环境搭建、Rockchip SDK申请及同步指南、Rockchip Bug 系统使用指南等，详见`<SDK>/docs/cn/Others`目录下的文档。

```
docs/cn/Others/
├── Rockchip_Developer_Guide_Repo_Mirror_Server_Deploy_CN.pdf
├── Rockchip_User_Guide_Bug_System_CN.pdf
└── Rockchip_User_Guide_SDK_Application_And_Synchronization_CN.pdf
```

## 文件目录结构 (docs_list_cn.txt)

详见`<SDK>/docs/cn/docs_list_cn.txt` 文档。

```
├── Common
├── Linux
├── Others
├── Rockchip_Developer_Guide_Linux_Software_CN.pdf
├──<chipset_name>
└── docs_list_cn.txt
```
