# RK3399 Linux5.10 SDK Release Note

---

**Versions**

[TOC]

---

## rk3399_linux5.10_release_v1.4.0_20231220.xml Note

This version mainly describes the addition of new features, improvements to existing functionalities, and updates to various components in the SDK.

### SDK New Features and Feature Improvements

- **Comprehensive Core Component Upgrade:** The core components of the SDK have been thoroughly updated to adapt to a wider range of functional requirements and significantly improve system security and performance.

- **New Repositories:** Added numerous new repositories to the SDK, such as uvc_app, uac_app,  etc., to meet the development needs of various products more comprehensively.

- **New Patches Directory:** This directory contains enhanced features like PREEMPT_RT, XENOMAI, etc., aimed at improving the customizability and optimization efficiency of the SDK.

- **Convenient Log Generation Command:** With the generate_logs command, users can now package log information more conveniently, simplifying the fault diagnosis and analysis process.

- **SDK Version Information Display:** Added version information display during the compilation process, making it easier for users to effectively manage and track different versions of the SDK.

- **Enhanced Dependency Check and Prompt:** Introduced a compilation dependency check and prompt feature in the SDK to ensure the completeness and consistency of the development environment.

- **Integration of More Debugging Tools:** More practical debugging tools have been built into the SDK, helping users to debug applications and optimize performance more efficiently.

- **Unified Color Coding of Log Prompts:** During the compilation process, log prompts have been color-coded to distinguish between messages, warnings, errors, and other levels.

- **Updated wifibt Script:** Updated the wifibt script, including commands like wifibt-chip, wifibt-info, and more, further enhancing wireless and Bluetooth functionality.

- **Support for the clean Module:** Introduced the clean module, helping users to clean the SDK environment more conveniently, maintaining the system's consistency and stability.

- **Input-event-daemon Key Function:** Added input-event-daemon key processing function, unifying the handling of power and other keys.

- **Support for Auto-Resize of ubi Partitions:** Supports the auto-resize function of ubi partitions, providing more flexible storage management options.

- **Package-file Editing Command:** Allows editing of package-file through the SDK, enabling custom management of software packages.

- **yocto Support for Customizing local.conf:** Added support for customizing local.conf in yocto.

- **Enhanced rootfs Configuration:** Comprehensive optimization and updates have been made to various rootfs-related configurations.

- **Integration of Precompiled android-adbd:** Replaced the original android-tools with precompiled android-adbd, improving system compatibility and efficiency.

- **Default Compilation Target Adjustment:** Modified the default compilation target setting, now defaulting to compile only release firmware.

- **Support for Boot Animation Configuration:** Added support for configuring boot animations, enhancing user experience.

- **Optimized Packaging Process for misc Firmware:** Organized and optimized the packaging process for misc firmware, improving efficiency.

- **Independent Kernel Configuration Support for recovery:** Added support for using an independent kernel configuration for recovery.

- **Support for Setting Specific rootfs Format for recovery:** Allows users to set a specific rootfs format for recovery.

- **Updated Security Compilation Mechanism:** Updated the compilation mechanism for security components, making it more convenient to enable and debug.

- **Added RT-LINUX Support:** Added support for Real-Time Linux (RT-LINUX), meeting the real-time system requirements of some products.

- **Fixed sysv System Service Level Error:** Resolved the error in automatically generating sysv system service levels.

- **Fixed yocto Repeated Compilation Issue:** Solved the abnormal problem of repeated compilation in the yocto environment.

- **Fixed AB Partition Packaging Issue:** Resolved the issue with AB partition packaging, ensuring more stable and reliable partition management.

- **Data Storage Migration:** Migrated the SDK platform data from Baidu Enterprise Network Disk to Lenovo Network Disk Filez (New), ensuring data stability and accessibility.

### Updates on SDK Components

#### Security Updates

Recent systems and software frameworks have released important security updates, including fixes for security vulnerabilities and version upgrades of some key components. The details are as follows:

1. **OP-TEE OS:** Fixed security vulnerabilities, details can be found in [Patch Brief #435185](https://redmine.rock-chips.com/issues/435185).

2. **Linux Kernel:** Security update from 5.10.160 to 5.10.198.

3. **Yocto:** Security update to version 4.0.13. More information can be found in the [official documentation](https://docs.yoctoproject.org/migration-guides/release-notes-4.0.13.html).

4. **Debian:** Security update to version 11.8. Detailed information is available in the [official documentation](https://docs.yoctoproject.org/migration-guides/release-notes-4.0.13.html).

5. **Buildroot:** Security update to the 2023.08 version, mainly updating core components related to the platform.

Here are the version updates for some key components:

- glmark2: Updated from 2021.02 to 2023.01
- glibc: Updated from 2.36.81 to 2.37.2
- valgrind: Updated from 3.18 to 3.21
- binutils: Updated from 2.38 to 2.40
- meson: Updated from 1.0.0 to 1.2.0
- wayland-protocols: Updated from 1.31 to 1.32
- wayland: Updated from 1.21 to 1.22
- seated: Updated from 0.7.0 to 0.8.0
- weston: Updated from 11.0.1 to 13.0.0
- gcc: Updated from 11.3 to 12.3
- pixman: Updated from 0.40.0 to 0.42.2
- gstreamer: Updated from 1.20 to 1.22
- libglib2: Updated from 2.68.4 to 2.76.1
- util-linux: Updated from 2.37.2 to 2.39.1
- irqbalance: Updated from 1.8.0 to 1.9.0
- Updates also for xorg-xserver, memtester, bluez-alsa, pulseaudio, bluez5_utils, hostapd, wpa_supplicant, neatvnc, etc.

These updates have enhanced the system's security and stability. It is very important for users of these software or operating systems to apply these updates promptly to protect the system from known vulnerabilities.

#### Update Buildroot

- Updated memtester and stressapptest, adding DDR stress testing and facilitating problem localization
- Updated Buildroot Launcher, adding a configurable status bar
- Weston added functions to shut down and restart the display service
- Added support for setting ubifs size
- Added archives directory structure, preloading some download packages
- Added support for lvgl and lvgl_demo
- Added ROS2 support
- Updated packages such as bluez-alsa/pulseaudio/bluez5_utils/hostapd/wpa_supplicant, adding support for features like hfp backend and wpa3
- Updated rkwifibt-app
- Upgraded Chromium version to 114.0.5735.198, adding support for H265/AV1 decoding, enabling WebGPU, and enhancing Chromium performance
- Updated Secureboot's AVB, improving compatibility
- Updated core components such as Gstreamer, weston, wayland, glibc

#### Update Debian

- Optimized Debian's Cheese app

1) Fixed the issue where Cheese camera, after opening for recording and then closing, enters a loop when reopened.
2) Added support for H264 encoding. Since Cheese only supports VP8 encoding by default, and many RK chips have weak or no support for VP8 encoding, H264 encoding support is added by default.

- Updated Xserver

1) Filtered out error messages for Mali DDK not supporting GBM_FORMAT_R8
2) Fixed the sliding lag issue in the top-left menu bar of the Xfce desktop
3) Fixed the issue where FlipFB, when enabled to prevent tearing, caused rotation functionality to malfunction
4) Fixed hardware mouse position error in cropped screens
5) Resolved screen rotation functionality issues
6) Increased the number of xv videos from 16 to 128
7) Added support for ARM Mali-4xx utgard DDK

- Updated rkwifibt with new scripts for enhanced functionality and compatibility

- Updated chromium-x11 version from 91.0.4472.164 to 114.0.5735.198

1) Support for HEVC (H265)
2) Enable VEA
3) Support for AV1 in V4L2 VDA
4) Enable WebGPU

#### Update Yocto

- Implemented automatic login for serial port
- Implemented automatic mounting for USB peripherals
- Implemented automatic pairing for wifibt
- Added default desktop icon layout in Yocto (synchronized with buildroot)
- Added support for pulseaudio
- Added support for ntp time synchronization

#### Update Kernel/rkbin

- Resolved reboot freeze issue.
- Added Kernel EDAC driver support for DDR ECC information.
- Added ISP driver sleep and wake-up interface functions.
- Updated RKNPU driver to 0.9.3.
- Enabled CONFIG_ARM64_USE_LSE_ATOMICS for better performance of LSE over LL/SC on ARMv8.
- Added minidump support.

#### Update MPP

- Supported Kernel 6.1, fixed dma-heap issues on Kernel 6.1.
- Changed input/output buffer from uncache to cachable to improve CPU efficiency.
- Added encoder support for variable frame rates.
- Added different mode buffer samples in mpi_dec_test.
- Optimized VP8 decoder's debug feature.
- Eliminated the need for the HAVE_DRM flag.
- Fixed frame dropping issue during MPEG4 stream switching.
- Addressed MPEG2 decoder pts update mechanism issue.
- Fixed segment info missing in encoder skip mode path.
- Resolved issue with the AV1 decoder handling empty EOS packets.
- Added markdown documentation for MPP development reference in the codebase.

#### Update gstreamer-rockchip

- Fixed playback issues with some special sources.
- Supported asynchronous encoding.
- rkximage now supports NV16_10B.

#### Update rkwifibt

- Added more WIFIBT debugging information.
- Updated firmware to support more older modules.
- Updated bcmdhd driver to 101.10.591.x, adding Kernel 6.1 support and some bug fixes.

#### Update Tools

- Resolved system upgrade issues caused by partition alignment.
- Updated SD tool to V1.76.
- Updated RKDevTool to V3.19.
- Updated Windows upgrade_tool to V2.23.
- Updated Rockchip_HdcpKey_Writer to V1.0.5.

#### Update Documentation

- Updated SDK application process and Redmine system usage instructions.
- Updated DDR-related documentation, integrated into a single development document.
- Added Common/Security and other document directories.
- Added ROS2 documentation.
- Added English documentation for Rockit.
- Added RT performance testing and analysis documentation.
- Added MCU_RGB and MIPI_DSI2 display development documentation.
- Updated development documentation for AVL/USB/USB/NVM/SPI/PERF/WESTON, etc.
- Updated RK3399 release documentation.

## rk3399_linux5.10_release_v1.3.0_20230920.xml Note

1 **Update Debian**

- Optimize Debian's Cheese app

1) Fixed a loop issue when the Cheese camera was turned on for recording and then turned off again
2) Add H264 encoding support, as Cheese only supports VP8 encoding by default, but many RK chips have weak or unsupported VP8 encoding So by default, support for H264 encoding is added

- Update Xserver

1) Filtering Mali DDK does not support GBM_FORMAT_R8 error issue
2) Fix the issue of the menu bar sliding and getting stuck on the top left side of the Xfce desktop
3) Fix the issue of abnormal rotation function after opening the anti tearing FlipFB

- Update rkwifibt with new script processing for more complete functionality and compatibility

- Update Chromium x11 version from 91.0.4472.164 to 111.0.5563.147

1) Drop is_official_build=false GN arg for optimization
2) Support HEVC (H265)
3) Enable VEA
4) Support AV1 in V4L2 VDA

2 **Update Buildroot**

- Update Buildroot Launcher and add status bar for configuration
- Weston adds features for closing services and restarting display services
- Increase support for ubifs size setting
- Add the archives directory structure and preset some download packages in advance
- Update lvgl_demo
- Update components (glmark2\glibc\wayland\weston...)

3 **Update Yocto**

- Implement automatic login serial port function
- Implement the automatic mounting function of USB peripherals
- Implement the automatic configuration function of wifibt

4 **Update rockit**

- update rockit version to v1.7.12

5 **Update libmali**

- Update libmali header file

6 **Update rkbin**

- Update RK3399 BL32 to V2.11

1) Fix security vulnerabilities
2) Fix memory leaks.
3) Enable efuse dependent clock

7 **Update Kernel**

- use multicodecs instead simple card for rk3399 evb
- update rk3399-sapphire-excavator-lp4-linux.dts
- Enable RT5651 for rk3399 excavator evb

8 **Update tools**

- Update SD tool to V1.76

1) Fix using empty misc size greater than 64k, SD card upgrade tool may have write errors.

- Update RKDevTool to V3.19
- Update window upgrade_tool to V2.23
- Update Rockchip_HdcpKey_Writer to V1.0.5

9 **Update documents**

- Update the SDK application process and instructions for using the Redmine system
- Update DDR related documents and integrate them into one development document
- Add Common/Secutiry document directory
- Add Rockit English documents
- Add RT performance related testing and performance analysis documents
- Add MCU_RGB and MIPI_DSI2  Display Development Document
- Update AVL/USB/PCIE/MMV/USB/NVM/SPI/PERF/WESTON/and other related development documents
- Update the relevant documents required for RK3399 release

10 **Update device/rockchip*

- Add `generate_logs` command is used to package log information.
- Compilation adds prompt SDK version information
- Default empty misc, go to resize partition in OS
- Support for clean module
- Yocto adds default desktop icon layout (synchronized with buildroot)
- Add some dependency checks and prompts for SDK compilation
- Fix AB partition packaging issue
- Fix issue with aarch64 precompiled tool not being able to use
- Yocto supports 3288w
- Ui partition supports automatic resizing
- Support command editing package file
- The yocto SDK supports automatic mounting of USB drives
- Default installation of rktoolkit for all SDKs
- Generate misc firmware from script at compile time
- Using a new wifibt script

## rk3399_linux5.10_release_v1.2.1_20230720.xml Note

1 **Update Debian**

- Filtering Mali DDK does not support GBM_FORMAT_R8 error issue
- Fix the issue of the menu bar sliding and getting stuck on the top left side of the Xfce desktop
- Fix the issue of abnormal rotation function after sretting FlipFB to always
- Add support for Cheese H264 encoding and default to using H264 encoding
- Update rkaiq to release v5.0x1.3
- Update mpp/gstreamer rockchip

2 **Update Buildroot**

- Update lvgl
- Update weston to suppor some issues
- Support pre-downloaded archives for download

3 **Update documents and tools**

- Upgrade pin_debug_tool to v1.12
- Upgrade programmer_image_tool to v1.26
- Upgrade SDDiskTool to v1.75
- Upgrade FactoryTool to v1.81
- update RKDevTool to v3.18
- Upgrade programming_image_tool to v1.26
- Upgrade Linux_Upgrade_Tool to v2.22
- Update the relevant documents required for RK3399 release

## rk3399_linux5.10_release_v1.2.0_20230620.xml Note

1 **Update device/rockchip**

- Fix Secureboot

2 **Update Debian**

- Update Blueman to resolve abnormal Bluetooth power management issues after sleep wake-up
- Update alsa to address audio issues after sleep wake-up
- Update mpp/gstreamer rockchip

3 **Update Buildroot**

- Resolve task - c command line exception issues
- Add Weston alpha channel support
- Add Gstreamer NV16_10LE40 format support
- Increase the use of domestic kgithub image sources for DL packages

4 **Update rkbin**

- Fixed sometime tool read efuse fail after efuse program

5 **Update Kernel**

- Update RK817/RK809 driver to address sleep wake-up issues

6 **Update documents and tools**

- Update Rockdev to resolve address resolution exceptions
- Update the relevant documents required for RK3399 release

## rk3399_linux5.10_release_v1.1.1_20230520.xml Note

The main update list is as follows:

1 **Update device/rockchip**

- buildroot/yocto installs Chinese fonts by default
- recovery does not install additional overlay
- Fixed hostname exception after dynamically switching rootfs
- Add dependency check and installation prompt
- Add repair owner permission
- Fix the problem that repeated compilation of yocto post-rootfs does not execute

2 **Update recovery**

- Repair press the recovery button to reset to enter the system, nothing is displayed
- U disk upgrade startup support
- Solve the problem that the first upgrade of the SD card starts abnormally
- Fix userdata partition unmount failure

3 **Update Debian**

- Solve the problem of cheese app recording screen freeze
- Support xfce4 power management configuration
- There are hidden problems in updating system permissions
- Update rkwifibt to solve problems related to switch or sleep wake-up
- Update adb to add some feature support
- Update mpp and gstreamer-rockchip
- Update rockchip-test to V2.1
- Solve the abnormal double-click problem of Debian desktop icons

4 **Update Buildroot**

- Add support for setting the location of Gstreamer glimagesink/xvimagesink plugin
- Fixed crash when Weston destroys dmabuf
- Add power/dictionary pen/sweeping machine and other product configurations
- Added support for external toolchains
- Add support for GCC8.X
- Fix the problem that the video source size may overflow after Gstreamer kmssink scaling
- Add Chromium 111.0.5563.147, support video H265 decoding
- Update Frecon, solve zoom and switch VT1 support
- Update rockit to v1.7.4
- Add support for lvgl demo

5 **Update rkbin**

- Fixed LP3 reboot error

6 **Update Kernel**

- Solve isp switch abnormal error
- RK3399 EDP low temperature power-on probability is not displayed, PLL lost lock
- System panic after opening KASAN with Logo buf non-PAGE aligned

7 **Update Uboot**

- fastboot: Burning more than 4G firmware causes the system to fail to start
- System panic after opening KASAN with Logo buf non-PAGE aligned

## rk3399_linux5.10_release_v1.1.0_20230420.xml Note

The main update list is as follows:

### SDK update main core component versions

- Kernel upgrade from 5.10.110 to 5.10.160
- Update Debian to 11.6
- Update Yocto to 4.0.9
- Update Buildroot to November 2021
- Weston updated to 11.0.1
- Gstreamer updated to 1.22

### SDK optimization and adjustment

- Reconstruct SDK configuration compilation mechanism
- Adjusting the compilation mechanism of the wifibt module
- Import a new version of Camera rkaiq to optimize its functionality and performance

### SDK New features

- Added Linux headers support, making it convenient for third-party applications without the need for kernel compilation and debugging
- Added yocto support for x11
- Added gst mpp support for av1
- Added gst mpp support for afbc encoding
- New support for OTA differential function
- Added adaptation support for libcamera

### SDK main fix issues

- Fix ubi format partition packaging and mounting issues
- Fix recovery mount partition exception
- Fixed the issue of resetting the time to 0 after standby wake-up
- Fix fiq debugger driver, serial port RX interference, resulting in system stuck
- Fixed a low probability of error after starting KASAN: KASAN: use after free in rga_ job_ next
- Support for addressing Weston touch related configurations
- Solve HDMI/MIPI plug and display issues
- Solve the problem of PDM recording channel confusion
- Resolve the issue of playback noise caused by RK809 · RK817-pdm recording
- Fixed LP3 reboot error
- Fixed single channel loop at "advanced training done"
- Fixed LP3 dbw detect bug

## rk3399_linux5.10_release_v1.0.0_20220920.xml Release Note

```
- The first release version
```
