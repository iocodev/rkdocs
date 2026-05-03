# Rockchip Android Multimedia FAQ

ID: RK-PC-YF-782

Release Version: V1.0.1

Release Date: 2023-12-05

Security Level: □Top-Secret   □Secret   □Internal   ■Public

**DISCLAIMER**

THIS DOCUMENT IS PROVIDED “AS IS”. ROCKCHIP ELECTRONICS CO., LTD.(“ROCKCHIP”)DOES NOT PROVIDE ANY WARRANTY OF ANY KIND, EXPRESSED, IMPLIED OR OTHERWISE, WITH RESPECT TO THE ACCURACY, RELIABILITY, COMPLETENESS,MERCHANTABILITY, FITNESS FOR ANY PARTICULAR PURPOSE OR NON-INFRINGEMENT OF ANY REPRESENTATION, INFORMATION AND CONTENT IN THIS DOCUMENT. THIS DOCUMENT IS FOR REFERENCE ONLY. THIS DOCUMENT MAY BE UPDATED OR CHANGED WITHOUT ANY NOTICE AT ANY TIME DUE TO THE UPGRADES OF THE PRODUCT OR ANY OTHER REASONS.

**Trademark Statement**

"Rockchip", "瑞芯微", "瑞芯" shall be Rockchip’s registered trademarks and owned by Rockchip. All the other trademarks or registered trademarks mentioned in this document shall be owned by their respective owners.

**All rights reserved. ©2023. Rockchip Electronics Co., Ltd.**

Beyond the scope of fair use, neither any entity nor individual shall extract, copy, or distribute this document in any form in whole or in part without the written approval of Rockchip.

Rockchip Electronics Co., Ltd.

No.18 Building, A District, No.89, software Boulevard Fuzhou, Fujian,PRC

Website:     [www.rock-chips.com](http://www.rock-chips.com)

Customer service Tel:  +86-4007-700-590

Customer service Fax:  +86-591-83951833

Customer service e-Mail:  [fae@rock-chips.com](mailto:fae@rock-chips.com)

---

**Preface**

**Overview**

This document introduces the common debugging methods of Rockchip media platform and FAQ of development. Engineers who encounter problems mentioned in this document can try to debug and converge the problems by the methods provided to improve the efficiency of problem solving.

| **Chipset** | **Kernel Version **    |
| ----------- | ---------------------- |
| All chips   | Linux-4.19、Linux-5.10 |

**Intended Audience**

This document (this guide) is mainly intended for:

Technical support engineers

Software development engineers

------

**Revision History**

| **Version** | **Author**  | **Date**   | **Change Description**      |
| ---------- | ------- | ------------- | ------------------|
| V1.0.0     | Chen Jinsen | 2022-03-03    | Initial version |
| V1.0.1     | Chen Jinsen | 2023-06-04    | Update format, add some FAQ |

---

**Contents**

[TOC]

---

# 1 Generic Media

## Can not play video source

### Check whether the video source is suppoted by chips

Please use MediaInfo tool provided by Windows or Linux to check media parameter information of the source, including encoding format, resolution, bit rate, scanning mode, bit depth and other basic informations. Compare with the datasheet of the chip or Codec Benchmark provided by platform, you can judge whether the source is supported or not.

> Note：The Datesheet and Codec Benchmark calibrate the encoding and decoding abilities of the chip, which are necessary for checking support status. If you need to get that, please mail to sw.fae@rock-chips.com

![image-1](Rockchip_Android_Multimedia_FAQ_CN/image-1.png)

### Check whether the audio and video formats are related to the copyright

Due to the copyright, we already confirm that the following formats are not supported on the platform:

```
Audio: mlp、ac3、eac3、dts、dsp、heaac、others related to Dolby
Video: divx、xvid、rmvb、vp6、vc1、svq、iso blue light
```

## Specification table for common codec capability of chips 

You can check and get the codec specification of the chip from Datasheet or Codec Benchmark. The following includes specification table for decoding capability of platform common chips, in order to check expediently.

> The actual tested codec capacity is related to the system load at that time. For example, when the CPU\DDR load is heavy, the codec capacity may be slightly lower than that in Datasheet.

### Specification table for decoding capability

|             | H264          | H265          | VP9           | JPEG           |
| :---------: | :-----------: | :-----------: | :-----------: | :------------: |
| RK3588      | 7680x4320@30f | 7680x4320@60f | 7680x4320@60f | 1920x1080@280f |
| RK3562      | 1920x1080@60f | 4096x2304@30f | 4096x2304@30f | 1920x1080@60f  |
| RK3528      | 4096x2304@30f | 4096x2304@60f | 4096x2304@60f | 1920x1080@120f |
| RK356X      | 4096x2304@30f | 4096x2304@60f | 4096x2304@60f | 1920x1080@80f  |
| RK3399      | 4096x2304@30f | 4096x2304@60f | 4096x2304@60f | 1920x1080@30f  |
| RK3328      | 4096x2304@30f | 4096x2304@60f | 4096x2304@60f | 1920x1080@30f  |
| RK3288      | 3840x2160@30f | 4096x2304@60f | N/A           | 1920x1080@30f  |
| RK3358/PX5  | 4096x2160@25f | 4096x2304@60f | N/A           | 1920x1080@30f  |
| RK3326/PX30 | 1920x1080@60f | 1920x1080@60f | N/A           | 1920x1080@30f  |
| RK312X      | 1920x1080@60f | 1920x1080@60f | N/A           | 1920x1080@30f  |

 Other notes:

1. RK3588 supports AVS2(7680x4320@60f) and AV1(3840x2160@60f) decoding.
2. RK3528 supports AVS2(4096x2160@60f) decoding.
3. RK3562 doesn't support mpeg1/2/4、vp8、h263 formats decoding.
4. Except RK3562, other chips support mpeg1/2/4、vp8、h263 decoding, and the max specification is 1080P.

### Specification table for encoding capability

|             | H264          | H265          | VP8           | JPEG          |
| :---------: | :-----------: | :-----------: | :-----------: | :-----------: |
| RK3588      | 7680x4320@30f | 7680x4320@30f | 1920x1080@30f | 3840x2160@30f |
| RK3562      | 1920x1080@30f | N/A           | N/A           | N/A           |
| RK3528      | 1920x1080@60f | 1920x1080@60f | N/A           | 3840x2160@30f |
| RK356X      | 1920x1080@60f | 1920x1080@60f | 1920x1080@30f | 1920x1080@60f |
| RK3399      | 1920x1080@30f | N/A           | 1920x1080@30f | 1920x1080@30f |
| RK3328      | 1920x1080@30f | 1920x1080@30f | 1920x1080@30f | 1920x1080@30f |
| RK3288      | 1920x1080@30f | N/A           | 1920x1080@30f | 1920x1080@30f |
| RK3368/PX5  | 1920x1080@30f | N/A           | 1920x1080@30f | 1920x1080@30f |
| RK3326/PX30 | 1920x1080@30f | N/A           | 1920x1080@30f | 1920x1080@30f |
| RK312X      | 1920x1080@30f | N/A           | 1920x1080@30f | 1920x1080@30f |

## How to improve VPU frequency

VPU（Video Processing Unit）is hardware video processing unit to evaluate the performance issues of hardware codec. Generally, it's necessary to manipulate the VPU frequency

> It is generally believed that when the performance reaches the bottleneck, increasing the VPU and DDR frequency will improve the hardware codec ability. However, overload frequency has a certain impact on the stability of the machine, so it is recommended to test fully before integration.

Please refer to the documents in SDK RKDocs/common/DDR/Rockchip-Developer-Guide-DDR/ for improving DDR frequency. This section mainly introduces the operation of platform VPU frequency.

### VPU frequency searching

You can search for VPU  frequency by system clock tree table（cat /d/clk/clk_summary）. The following shows the names of common codec clock tree frequency nodes, you can contrast the table and check in the clk_summary output.

|             | h264_dec | h265_dec | vp9_dec | jpeg_dec     | h264_enc | h265_enc |
| :---------: | :------: | :------: | :-----: | :----------: | :------: | :------: |
| RK3588      | rkvdec   | rkvdec   | rkvdec  | jpeg_decoder | rkvenc   | rkvenc   |
| RK3562      | rkvdec   | rkvdec   | rkvdec  | jdec         | rkvenc   | ×        |
| RK3528      | rkvdec   | rkvdec   | rkvdec  | jpeg_decoder | rkvenc   | rkvenc   |
| RK356X      | rkvdec   | rkvdec   | rkvdec  | jdec         | rkvenc   | rkvenc   |
| RK3399      | vdu      | vdu      | vdu     | vcodec	     | vcodec   | ×        |
| RK3328      | rkvdec   | rkvdec   | rkvdec  | vpu          | h264     | h265     |
| RK3288      | vcodec   | hevc     | ×       | ×            | vcodec   | ×        |
| RK3368/PX5  | video    | video    | ×       | video        | video    | ×        |
| RK3326/PX30 | vpu      | vpu      | ×       | vpu          | vpu      | ×        |
| RK312X      | vdpu     | vdpu     | ×       | vdpu         | vdpu     | ×        |

For example, get the frequencies of following scenes:

1.RK3588 H264 decoding

```
$ cat /d/clk/clk_summary | grep rkvdec     // <aclk_rkvdec0> <aclk_rkvdec1>
```

2.RK3288 h264 decoding

```
$ cat /d/clk/clk_summary | grep vcodec  // <aclk_vcodec>
```

3.RK3328 H265 decoding

```
$ cat /d/clk/clk_summary | grep h265    // <aclk_h265>
```

### VPU frequency modification

The modification method of 4.4 kernel（Android 7.1 ~ 9.0）frequency is following. You should configure the vpu frequency to test 500M , but 4.4 kernel driver version cannot support to configure the IP frequency solely.

```
--- a/drivers/video/rockchip/vcodec/vcodec_service.c
+++ b/drivers/video/rockchip/vcodec/vcodec_service.c
@@ -2307,6 +2307,7 @@ static void vcodec_set_freq_default(struct vpu_service_info *pservice,
 {
        enum VPU_FREQ curr = atomic_read(&pservice->freq_status);

+       reg->freq = VPU_FREQ_500M;
        if (curr == reg->freq)
                return;
```

Please refer to the methods followed for 4.19/5.10 kernel（>=Android 10.0）frequency configuration, and configure the  rkvdec frequency for 500M test.

**1. mpp_service driver configures the frequency by dtsi **

You can search for the configuration of chip codec, the following example is to increase the frequency to 500M when RK3399 decoder configured is higher than 4K resolution.

```
<rk3399.dtsi>

rkvdec: rkvdec@ff660000{
    clock-names = "aclk_vcodec", "hclk_vcodec", 
            "clk_cabac", "clk_core",;
    rockchip,normal-rates = <297000000>, <0>, 
            <297000000>, <297000000>, ;
    rockchip,advanced-rates = <500000000>, <0>, 
            <500000000>, <500000000>;
    rockchip,default-max-load = <2088960>;  // 1920x1088
};

rockchip,normal-rates is the clock set when resolution is lower than 1920x1088 
rockchip,advanced-rates is the clock set when resolution is higher than 1920x1088 
```

**2. Use debugfs node to modify the frequency**

For temporary test, evaluate the effect of frequency on codec by following method:

```
$ echo 500000000 > /proc/mpp_service/rkvdec/aclk
$ echo 500000000 > /proc/mpp_service/rkvdec/clk_core
$ echo 500000000 > /proc/mpp_service/rkvdec/clk_cabac
```

## How to grab the codec input and output

For the problems of  blurred screen and green screen, it's conducive to locate the problem quickly and narrow it down by grabbing the codec input and output.

The following introduces that the platform saves the switch of decoding input and output.

[Application layer]

```
1. Use MediaCodec API
    a) Encoding
        - input: queueInputBuffer  save the file before inputting buffer
        - output: After dequeueOutputBuffer, you can read and write buffer that encoding outputs 
    b) Decoding
        - input: queueInputBuffer  save the file before input buffer
        - output: You can read and write buffer that decoding outputs after dequeueOutputBuffer without configuring surface
```

[Framework layer]

```
$ setenforce 0
$ mkdir /data/video/

1)Android 12 and above should use Codec2 framework, and grab as following:
  $ setprop vendor.dump.c2.log 0x000000f0

2)Android 11 and below should use OMX framework,and grab as following:
// decode dec_in*.bin
$ setprop vendor.omx.vdec.debug 0x01000000
$ setprop record_omx_dec_in 1
 
// encode enc_in*.bin enc_out*.bin
$ setprop vendor.omx.venc.debug 0x03000000
$ setprop record_omx_enc_in 1
$ setprop record_omx_enc_out 1
```

If above commands can not generate the file in /data/video/ , then you can use the switch of underlying codec library of system to grab.

```
$ setenforce 0
$ mkdir /data/video/

$ setprop mpp_dump_in /data/video/mpp_dec_in.bin
$ setprop mpp_dump_out /data/video/mpp_dec_out.bin
$ setprop vendor.mpp_dump_in /data/video/mpp_dec_in.bin
$ setprop vendor.mpp_dump_out /data/video/mpp_dec_out.bin
$ setprop mpp_debug 0x600 && setprop vendor.mpp_debug 0x600
```

## The calculation of multi-channel codec supporting number

The conversion of the maximum supported channel number of the chip hard-codec involves hardware pixel computing power, for example:

```
 Question: How many channels of H264 1080P@30fps decoding does RK3399 support?

  Query RK3399 specification, and you will get the decoding ability of H264: 4096x2304@30fps.
 1) hardware pixer computing power：4096x2304x30f each second
 2) convert into 1080P@30fps，the calculation method is:
           (4096x2304x30) / (1920x1088x30) = 4.5       
 3) The more channal numbers, the more conversion loss, generally, the final value rounds down. So it supports 4 channels of 1080P@30fps.
```

You can refer to this example to calculate other codec, and pay attention that the calculation above is according to high-bit rate, so it can make sure to support H264 4 channels 1080P@30fps decoding anytime.

RK3588、RK356X、RK3399、RK3328 construct rkvdec（H264、H265、VP9）which are high performance decoders. If you decode H264\H265\VP9, ordinary films even have chance to break through the computational limit at the limiting case.

If **RK3399 has chance to reach 1080P@30fps 8 channels decoding**, the detailed evaluation method is following:

Premise: it's not a high-bit rate film.

**1） Decoding performance target: decoding time per frame of VPU driver kernel**

```
4.19/5.10 kernel（Android 10.0 and above）
$ echo 0x0100 > /sys/module/rk_vcodec/parameters/mpp_dev_debug
$ cat /proc/kmsg

4.4 kernel（Android 7.1 to 9.0）
$ echo 0x0100 > /sys/module/rk_vcodec/parameters/debug
$ cat /proc/kmsg
```

The decoding time per frame of supporting 1080P@30fps  8 channel is (time/ total frames):

```
   ->  (1 x 1000) / (8 * 30 ) ≈ 4.16 ms
```

Ignore the time loss of decoding channel, it meets requirement that decoding time is within 4ms each frame. If the current testing shows that per frame decoding time can't meet requirement, you can refer to the method followed to evaluate and improve the frequency message. Generally, improving VPU or DDR frequency can help to hardware codec performance.

**2）Frequency message**

Generally, we believed that improving VPU or DDR frequency can help to hardware codec performance when the performance reaches to the limit. So you should pay attention to VPU and DDR frequency during testing. If the frequency has chance to improve, you can try to improve the frequency and then check whether the decoding time of kernel can reach requirement or not as step 2.

```
/* VPU frequency */
$ cat /d/clk/clk_summary | grep vdu  	<aclk_vdu>    rk3399
$ cat /d/clk/clk_summary | grep rkvdec  <aclk_rkvdec> rk3588\rk3328\rk356x    

/* DDR frequency */
$ cat /sys/class/devfreq/dmc/cur_freq
```

**3） Improve VPU frequency**

Please refer to section 3 to improve VPU frequency.

**4） Improve DDR frequency**

```
echo performance > /sys/class/devfreq/dmc/governor   // Set DDR frequency as performance
```

Please refer to RKDocs/common/DDR/Rockchip-Developer-Guide-DDR/ 文档说明 to improve DDR frequency.

## Media applications have high CPU usage

**【Question】**

When the client's customized multimedia codec application runs ,the CPU usage is high, which leads to system stalling.

**【Analysis】**

Lots of read and write operations on media applications also increases CPU usage. So firstly, we need divide the responsibility to find exactly which process and thread is occupying the CPU abnormally. You can refer to the following steps to analyze, and narrow down the analytical range step by step: **Process -> Thread -> Function**.

**1. Confirm CPU usage distribution of system**

In the problem scenario, **<u>adb shell busybox top</u>** is used to show the CPU usage of each process in real time.

As the picture shows followed,  com.quectel.quecencdectester takes up 47.8%  CPU usage, which should be analyzed emphatically.

![image-9](Rockchip_Android_Multimedia_FAQ_CN/image-9.png)

**2. Confirm the CPU usage of each thread during abnormal process**

In the problem scenario, **<u>top -H -p $(pidof com.quectel.quecencdectester)</u>** is used to show the CPU usage of each apk process. If the apk process takes up most of CPU usage, then the clients need to analyze by themselves. However, if the system frame thread takes up the CPU usage, then the clients can submit to redmine for help.

As the picture shows followed,  CodecLooper deals with the thread for MediaCodec, and Sample is carrying out multi-channel decoding test, so in this case, the framework codec thread takes up the most of CPU usage.

![image-10](Rockchip_Android_Multimedia_FAQ_CN/image-10.png)

**3. Analyze the CPU usage of function**

There are lots of  CPU performance analysis tools in Android, you can use TraceView\Systrace integrated by Android Studio IDE. This section introduces simpleperf which comes from SDK for calculating CPU usage.

Following the analysis of Sample above, the CPU usage of CodecLooper in multi-channel decoding app is high, so we can use simpleperf tool to get the CPU usage percentage of each functions.

```
1. Use the command followed to record CPU events in time， 1349 is process pid, and duration 10 represents recording 10 senconds.
simpleperf record -o /sdcard/perf.data -g -p 1349 --duration 10

2. After finishing record, use the following command to generate analysis reports.
simpleperf report -i /sdcard/perf.data -g caller > /sdcard/perfdata
```

/sdcard/perfdata is the analysis report generated, as the following picture shows, CodecLooper is the thread which takes up the most CPU usage with 15.31% . And most of time of this thread is spent in processing libyuv::X420ToI420.

![image-11](Rockchip_Android_Multimedia_FAQ_CN/image-11.png)

This function is used to decode the frame and then output and copy it to the outside of application in MediaCodec Buffer Mode decoding mode. Because the application can't deal with the dma decoding output of frame, this part of CPU copy work is unable to avoid. The section <Improve decoding efficiency of MediaCodec BufferMode> in this document describes that replacing the CPU copy into platform hardware RGA copy can improve the CPU usage in this scene.

> The analysis steps above can also be used in debugging other CPU usage problems in applications.

## Analysis of Memory Leaks in Multimedia applications

**【Question】**

When multimedia applications run, the available memory of system becomes less and less, and eventually,  OOM (Out Of Memery) system restarts.

**【Analysis】**

You can refer to the steps followed for memory leak debugging:

**1. Confirm which process has the memory leak**

Firstly, you need to confirm whether the leaks are coursed by customized application or system process by meminfo. You can compare the RSS\PSS usages of each process to confirm which process usage is increasing, that is, this process has the possibility of leakage.

```
dumpsys meminfo
```

**2. Confirm the type of memory leak**

Making sure the type of memory leak is helpful for us to locate the problem better. The main types of memory leak of video play are malloc or dmabuf , dmabuf is used for decoding output and display, which is the base of zero-copy video playing, you can apply for it by the interfaces of dma buffer(ION\DRM\dmaBufferHeap). malloc is the memory that alloc and malloc functions apply for.

Linux showmap command is used to locate memory map list applied by process.

```
showmap $(pidof xxx)
```

RSS\PSS is process footprint, and the unit is K. You should find out the footprint which is large, and make sure the type of leak. If the type is dmaBuf ,then you should check video play initialization, destruction, and buffer application for release at info-change. If the type is  malloc, then you can use Android Malloc Debug to locate the leak stack.

![image-12](Rockchip_Android_Multimedia_FAQ_CN/image-12.png)

```
Map memory object type：
    - /dmabuf:    		 dma buffer type
    - malloc  或 anon:scudo	malloc type
```

**3. Android Malloc Debug-locate memory leak growth stack**

Malloc Debug is a native tool provided by Android for debugging native memory leaks \ memory corruption \ memory release issues. You can refer to SDK bionic/libc/malloc_debug/README.md for instructions.

For example, if the process name of memory detection is myTest, then:

```
$ adb shell stop
$ adb shell setprop libc.debug.malloc.program myTest
$ adb shell setprop libc.debug.malloc.options backtrace
$ adb shell start
$ Start testing and reoccur the problem
$ kill -9 $(pidof myTest)
```

By default, save the memory snapshot captured to: /data/local/tmp/backtrace_heap.3302.txt, and thereinto 3302 is the process pid of myTest.

The memory snapshot generated can be parsed by  SDK native_heapdump_viewer.py and then generate leak stack.

```
$ python development/scripts/native_heapdump_viewer.py --symbols $(OUT)/symbols b acktrace_heap.3378.txt > out_heap.txt 
```

According to the codes showed by out_heap memory stack informations, you can repair the leak.

## Reference demo for platform JPEG hardware MediaCodec 

Native MediaCodec channel of Google doesn't support JPEG, you need to integrate JPEG hardware codec function in the multimedia application system with  libhwjpeg.

> The relevant code is in the SDK path: hardware/rockchip/libhwjpeg

libhwjpeg is used to support the Rockchip platform JPEG hard codec, which is an encapsulation of the JPEG codec logic of the platform's MPP (Media Process Platform) library.

The MpiJpegEncoder class encapsulates hardcode-related operations, and the MpiJpegDecoder class encapsulates hard-coded operations to support image or MJPEG stream decoding. Main Catalogue of Projects:

```
- src: Library implementation code
- inc: Application interface header file
- test: User test instances
```

Please refer to  readme.txt instructions of directory for guide.

# 2 Video codecs

## Video stucks/ audio and video are out of sync

Video playback stuttering, sound stuttering, and audio and video out-of-sync can be classified as fluency issues. The analysis of fluency problems needs to rely on the display frame rate FPS and kernel single frame decoding time.

```
// display frame rate FPS
$ setprop debug.sf.fps 1
$ logcat -c ;logcat | grep mFps

// kernel single frame decoding time
4.19/5.10 kernel（Android 10.0 and above）
$ echo 0x0100 > /sys/module/rk_vcodec/parameters/mpp_dev_debug
$ cat /proc/kmsg

4.4 kernel（from Android 7.1 to 9.0）
$ echo 0x0100 > /sys/module/rk_vcodec/parameters/debug
$ cat /proc/kmsg
```

For fluency issues, the main reasons can be attributed to the following points, and engineers can refer to the following methods to troubleshoot related problems:

**1. Check if you are using platform decoding**

Some video websites or applications may use soft decoding to decode video formats due to unknown code and APIs. As a result, for this kind of problems, you can find corresponding video formats in Logcat, if you determine that the video formats and specifications are within the scope of the chip's decoding capability and do not use the platform hardware decoding, please check whether the program or website has configuration to control hardware decoding.

To determine whether to use platform hardware decoding, you can type in the kernel single-frame decoding time, and after kernel hardware processing, there will be a value printed, indicating that the current hardware decoding is taken, otherwise it means soft decoding.

**2. Confirm whether the problem is caused by decoding or display**

There are two actions in video playback: decoding and display, and the decoding output is submitted to the display for rendering, so please first check the chip codec capability specification table in Section *2 Specification table for common codec capability of chips* to determine the source within the decoding capability and use the above commands to query the kernel single-frame decoding time and display frame rate.

If the single-frame decoding time is sufficient (within 33 ms for a 30-frame source or within 16 ms for a 60-frame source), it can be summarized as insufficient display synthesis efficiency, then you can debug as section 3 followed.

**3. Insufficient synthesis efficiency**

Abnormal screen refresh rate configuration can lead to inefficient HWC synthesis, so first check that the screen refresh rate in DTS is configured correctly.

```
rk3566_r:/ # cat /d/dri/0/summary
Video Port0: DISABLED
Video Port1: ACTIVE
    Connector: DSI-1
        bus_format[100a]: RGB888_1X24
        overlay_mode[0] output_mode[0] color_space[0]
    Display mode: 1080x1920p60
        clk[132000] real_clk[132000] type[48] flag[a]
        H: 1080 1095 1097 1127
```

The screen refresh rate is generally configured to 60 fps, if there is a problem, correct the panel-timing setting corresponding to the screen in the DTS configuration according to the following formula.

```
clock-frequency = (hactive + hback-porch + hfront-porch + hsync-len) * (vactive + vback-porch + vfrontporch + vsync-len) * fps
```

Non-screen parameter configuration issues are usually caused by the following reasons:

- The video display output is angled, i.e., the screen outputs rotationally.
- Scene Surface has too many layers, with multiple layers.
- Video formats are not supported.

You can grab the following logs and submit them to Redmine for help.

```
// Check whether the synthetic strategy is normal by SurfaceFlinger Services 
dumpsys SurfaceFlinger

// If it's abnormal, check the reason by printing HWC log 
adb shell "setprop sys.hwc.log 51”
adb shell "logcat -c ;logcat" > hwc
```

**4. There are decoding errors during decoding**

If there is an "error frame" in the log, it means that there is an error in the decoding process and the frame is lost. For this kind of problem, please make sure that the bitstream sent to the decoder is correct and there is no frame loss, and there are several ways to dump decode input in the media framework, please refer to the commands in section 4.

The captured input is a video-only track that can be analyzed using PC tools, such as eseye or Vega H264 Analyzer for H264 , and HEVCAnalyzer for H265, which can usually determine if there is a problem with the stream itself or if there is a frame drop. As previewed in the vega analysis tool below, if the POC value is continuous and the preview is correct, the bitstream is normal and there is no frame loss.

![image-2](Rockchip_Android_Multimedia_FAQ_CN/image-2.png)

If you confirm that the decoding input is correct, it means that the current decoding framework has a problem with the adaptation of the codestream, you can submit the corresponding codestream and attach the logcat log to redmine for help.

## Video recording screen output is blurry and mosaic

**【Question】**

The output of the video recording screen is blurry and mosaic.

**【Analysis】**

1. Platform encoding belongs to lossy compression coding with a loss of image data in the encoding process, so there is a certain difference between the encoding output and the original image.
2. The cause of fuzzy and mosaic phenomenon is usually that part of coding quality is too low, and QP is the coding quality quantification parameter, ranging from 1 ~ 51, the smaller the QP value, the higher the coding quality.

If the user interface does not limit the QP range, the QP range is determined by the user-defined bit rate. The higher the bit rate, the higher the encoding quality, and the smaller the QP value per frame. Therefore, the steps to troubleshoot coding mosaic problems are as follows:

**1. Check QP range of the encoded output**

PC tools such as eseye or Vega H264 Analyzer provide a single-frame image quality query, as shown in the figure below, the QP range of the frame is 16~29, macro blocks greater than 40 QP values may cause blurring and mosaic, if there are more than 40 QP quality values, you need to continue to check whether the bit rate and encoding quality strategy need to be adjusted, if the image QP range is normal and mosaics appear, you need to grab the encoding input to check whether the input itself has a mosaic.

![image-6](Rockchip_Android_Multimedia_FAQ_CN/image-6.png)

**2.  Check the validity of the bit rate parameter**

The compression performances of different encoders are different, and there is no standard bit rate comparison table to define whether the bit rate is reasonable or not, the image quality of the encoding output can be compared.

```
- a) If the actual bit rate >= the set bitrate of the app, and the image is blurty and QP value is too large
      The bit rate set by user is determined to be too small, it is recommended to increase the bit rate for testing.
- b) If the actual bitrate < the set bitrate of the app, and the image is blurty and QP value is too large
      Check whether the variable bitrate mode(BITRATE_MODE_VBR) is set for the API.
- c) If the actual bitrate matches the bitrate set by the app, you may need to manually adjust the image QP policy.
```

**3. Adjust the image QP policy**

**First of all, if it's baseline encoding currently, you can try to switch to high profile, which uses cabac entropy encoding, the overall compression rate is higher, and the image quality is better at the same bit rate. **

In Android 12 and later, MediaCodec supports image quality control and the user interface can define QP range. Setting Max QP to no greater than 40 can effectively improve blurring and mosaic problems.

The MediaCodec interface code of application layer can refer to the following settings (where qp-i-min represents the minimum QP value of the I-frame, and qp-p-max represents the maximum QP value of the P-frame):

```
format->setInt32("video-qp-i-min", 10);
format->setInt32("video-qp-i-max", 40);
format->setInt32("video-qp-p-min", 10);
format->setInt32("video-qp-p-max", 40);
```

It should be noted that adjusting the QP range may cause the bit rate to get out of control, so you need to pay extra attention to the encoding output bit rate.
The user interface of Android 11 and earlier versions does not support QP range control, and you can modify the MPP parameter configuration interface to limit the QP range.

![image-7](Rockchip_Android_Multimedia_FAQ_CN/image-7.png)

## MediaCodec encoding bitrate setting out of control/ over bitrate

**【Question】**

For version Android 12  and above, the actual stream bitrate is larger than setting, and the problem scenario is usually that the bitrate set by the user is small, for example, the user sets 1Mbps for 1080P resolution encoding bit rate , but the actual one is more than 4Mbps.

**【Reason】**

In Android 12, media format shaping is enabled, which is used to correct some improper configuration of QP, bitrate, etc.

The 1Mbps bitrate is considered unreasonable for 1080P resolution, and the VQApply module calculates a reference bitrate based on the bitrate, width, height, bpp and so on set by users, and corrects and assigns the value for encoder, which is usually greater than w * h * bpp.

The following VQApply is usually printed in the log, which means that the user sets the bitrate to 1258291 bps, and the VQApply framework corrects it to 4727808 bps, and assigns a value for the encoder to use as the real bitrate. As a result, the actual bitrate is on the high side.

```
D VQApply : minquality/target bitrate raised from 1258291 to 4727808 bps
```

**【Resolution】**

Google provides the property value debug.stagefright.enableshaping for closing the format shaping correction of the frame. If you don't need this feature, you can set the property  to turn off Debug.StageFright.EnableShaping 0.

At the same time, it can also be closed directly in the code.

Path: frameworks/av

![image-8](Rockchip_Android_Multimedia_FAQ_CN/image-8.png)

## Codec initialization failure, the logs notice: “mpp hal xxx init failed”

**【Question】**

The codec initialization of scenes such as video source playback, video recording, and photo capture fails, and the logs notice:“mpp hal xxx init failed”.

**【Analysis】**

```
E HAL_JPEG_VDPU2: hal_jpegd_vdpu2_init mpp_dev_init failed. ret: -1
E mpp_hal : mpp_hal_init hal jpegd init failed ret -1
```

If the codec initialization fails and the logs notice: mpp hal xxx init failed, this kind of problem usually because the DTS set by customer is not properly configured and the corresponding codec node is not enabled. The problem can be solved by adding the corresponding enabling node in the customer's DTS.

As above hal_jpegd_vdpu2 two key pieces of information are prompted:

- 1. JPEGD aka JPEG decoder initialization failed
- 2. The vdpu is the node that needs to be enabled

Check whether the vdpu node is properly enabled in the MPP driver directory.

```
ls -al /proc/mpp_service/
```

If it's not enabled, you can refer to the corresponding  dtsi configuration in kernel, such as,  rk3588-evb.dtsi \ rk3399-android.dtsi.

You can add the corresponding configuration followed to solve the problem logs above.

```
&mpp_srv {
    status = "okay";
};

&vdpu {
    status = "okay";
};
```

Another similar error log:

```
E hal_h264e_vepu541: hal_h264e_vepu541_init mpp_dev_init failed. ret: -1
E mpp_enc_hal: mpp_enc_hal_init hal hal_h264e init failed ret -1
E mpp_enc_hal: mpp_enc_hal_init could not found coding type 7
```

H264e, that is, 264 encoder failed to initialize, the name of the node that needs to be enabled is vepu. Therefore, the corresponding configurations that need to be added are:

```
&mpp_srv {
  status = "okay";
};

&vepu {
  status = "okay";
};
```

## 2.5 Improve decoding efficiency of MediaCodec BufferMode

**【Question】**

If the API uses MediaCodec Buffer Mode, then the surface decoding will not configured, which is manifested as a single frame decoding time longer and CPU usage  higher. When the problem occurs, the CPU load of the application is usually large.

**【Reason】**

The API MediaCodec is not configured with Surface for decoding, which means that the external application interface needs to decode and output buffer for additional processing, and the framework decoding outputting as dmaBuffer cannot be directly provided to the application, so in Buffer Mode, an additional copy is required to copy the decoded output from the framework to the application interface.

The corresponding Surface Mode is the scene of configuring Surface decoding, which we usually call zero-copy scenario. In this mode, the decoding and display do not need  any copy, and are directly passed through the dmaBuffer, which is more efficient than the Buffer mode.

Buffer Mode decoding mode needs an additional CPU copy processing, so the decoding processing time of a single frame becomes longer and the CPU usage becomes higher.

**【Resolution】**

Using system RGA hardware instead of CPU to copy can significantly improve decoding time and reduce CPU usage for scene.

For detailed modification patches, please refer to RK Patch Briefing：https://redmine.rock-chips.com/issues/418670

# 3 Practical Application

## Applications such as Kodi\bilibili do not use hardware decoders for video playback

**【Question】**

For Andrdoi 12 and above, using the apps of github ijkmedia playback framework（ Kodi and bilibili have been known）to play the video do not use hardware decoders.

**【Reason】**

For ijkmedia framework, when MediaCodec selects the decoder, it only filters the codec name began with OMX. as a hardware decoder. However, Andorid 12 uses the new codec2 framework, and the hardware codec name is c2.rk.avc.decoder, so there is no way to select a platform hardware decoder.

**【Resolution】**

Modify and add "OMX.c2" decoder to support adaptation of ijkmedia framework, such as redirecting c2.rk.avc.decoder to OMX.c2.rk.avc.decoder.

In addition to applications such as Kodi/Bilibili, customer-defined applications using the ijkmedia media framework either can not be hard decoding. You can check whether the log has the word "IJKMEDIA" printed or not.

For detailed modification patches, please refer to RK Patch Briefing：https://redmine.rock-chips.com/issues/396998

> This problem is judged to be an ijkmedia framework problem, and subsequently, the standard resolution is modifying the framework code still, so the patch above is provided as a temporary patch and should not be submitted to the version.

## WebView video playback fails or white borders appear on the top of the video

**【Question】**

On a SoC chip with AFBC decoding output function (RK3566RK3568RK3588RK3528), customers' applications or web pages fail to playback the video or white borders appear on the top of the video with WebView.

**【Reason】**

Background: In the FBC decoding format, the hardware fixed output is expanded by 4, so the decoding output offsets 4 rows of height.

At the end of webview video playback, use ImageReaderNdkImageReader to get the buffer of the video surface for rendering, and in fbc mode, the video buffer has a height offset of 4 rows, so the crop of the buffer needs to be handled correctly when displaying, otherwise the height of 4 lines offset will be displayed with white edges.

**【Resolution】**

fbc mode will only be used for video above 1080P resolution, so the following patch applies to 1080P and above resolution video playback for rk356x\rk3588\rk3528 webview .

**1. For webview video playback failure**

Error log is:

```
E NdkImageReader: Crop left top corner [0, 4] not at origin
```

In the default code, ImageReader limits the left-top corner of the buffer to 0, while the decoding output in fbc mode has a height offset of 4 lines, so the top corner is 4. You can remove the restriction to resolve the playback failure.

Patch ：frameworks/av

![image-3](Rockchip_Android_Multimedia_FAQ_CN/image-3.png)

**2. For webview video playback with white borders**

For the devices that have added above patches, white borders appear on the top of webview video playback when the resolution is larger than 1080P.

The reason why the local player plays the video without white edges is that the source crop is autonomous and controllable on the player end, and can pass the area we want to select and crop to the surface.

The webview rendering obtains the surface buffer through the ImageReader, and the application framework calls getHardwareBuffer to directly obtain the GraphicBuffer. As a result, the processing of the crop is handed over to the webview application code, and the framework is unable to solve the white edge for the time being. If the customers can not accept it, you can turn off the FBC decoding mode in the CODEC component at the expense of a slight decrease in non-FBC decoding performance.

The patches for Android 11 and before versions（hardware/rockchip/omx_il）:

![image-4](Rockchip_Android_Multimedia_FAQ_CN/image-4.png)

The patches for Android 12 and later versions（vendor/rockchip/hardware/interfaces/codec2）:

![image-5](Rockchip_Android_Multimedia_FAQ_CN/image-5.png)

## Aging test of iQIYI video playback occurs APP flashback

**【Question】**

In Android 10.0 and above, using iQIYI APP to paly video for aging test occurs memory leakage, leading to lowmem, and finally causes system abnormal and APP flashback.

**【Reason】**

The leak type is dma buffer memory, the leak occurs when the film ad is playing, the app uses the MediaPlayer interface, and the surface is set late, so the player first uses buffer mode to decode, and then the surface setting request arrives, triggering the surface change. The player needs to apply for a new decoding buffer for the new surface and release the old decoding buffer simultaneously.

In this case, the reference count of the buffer that old decoding outputs is not cleared, so this buffer cannot be finally released.

**【Resolution】**

Since the leak type is DMA buffer, it can be determined by the system dma_buf status information. If the number of dma buffer attached to the VPU continues to increase and cannot be released during the test, the problem is finally confirmed.

```
cat /d/dma_buf/bufinfo
```

For detailed modification patches, please refer to RK Patch Briefing:https://redmine.rock-chips.com/issues/423914

## The player app fails to fetch thumbnails in real-time during playback

**【Question】**

The player app fails to fetch thumbnails by MediaMetadataRetriever during playback. And the log notes:

```
MediaMetadataRetrieverJNI( 1574): getFrameAtTime: videoFrame is a NULL pointer 
```

**【Reason】**

In the current player framework, in order to save bandwidth, the thumbnail resolution in the background can not affect the foreground video playback, the thumbnail function is disabled during video playback by default, so the thumbnail cannot be captured during playback.

**【Resolution】**

Properties switch is available in versions above Android 12,  for turning this restriction on. If you need it for customer application development, you can add the following properties to the system prop file. For versions below Android 12, please log in redmine to find the corresponding engineer to update the library.

```
setprop rt_retriever_enable 1
```

## RK356X encoding occurs green screen when screen recording or recording, log notes an RGA error

**【Question】**

RK356X device occurs green screen when screen recording or recording, the log notes an RGA error and not to support the buffer beyond 4G address as following.

```
E/rga_mm  (    0): RGA_MMU unsupported Memory larger than 4G!
E/rga_mm  (    0): scheduler core[4] unsupported mm_flag[0x0]!
E/rga_mm  (    0): rga_mm_map_buffer map dma_buf error!
E/rga_mm  (    0): job buffer map failed!
E/rga_mm  (    0): src channel map job buffer failed!
E/rga_mm  (    0): failed to map buffer
```

**【Reason】**

1. RK356X uses hardware RGA2 for image processing, RGA2 hardware design can only handle 32-bit address space, so the buffer sent to RGA processing needs to allocate the space less than 4G.
2. The RK356X encoder can only process the aligned buffer, so the Codec component relies on RGA for pre-encoding processing, and the encoding is input into the buffer for alignment before sending it to the hardware VPU encoder.

The reason for the error is that the src or dst buffer address space processed by the RGA of the Codec component exceeds 4G, and Android framework Dma buffer application can finally pass Gralloc, so it is necessary to let Gralloc allocate buffer within 4G in this scenario.

**【Resolution】**

The dst buffer pre-processed by RGA is finally sent to the hardware encoder, which is modified by GraphicBufferAllocator, it can identify the GRALLOC_USAGE_WITHIN_4G flag that needs to be assigned 4G buffer and pass it to Gralloc.

The src buffer pre-processed by RGA of the Codec component comes from the surface, and the scene belongs to the BufferQueue producer-consumer model, where the Codec component is the consumer side and the Surface is the producer side.

The Surface buffer is distributed by the producer side, but the usage set by the consumer is ultimately applied to the Surface buffer allocation on the producer side. usage GRALLOC_USAGE_HW_VIDEO_ENCODER is used in Codec components to identify scenarios that are hardware encoders currently.
Therefore, we use this usage to distinguish, when the buffer is allocated with usage with GRALLOC_USAGE_HW_VIDEO_ENCODER and is on the RK356X platform, then Gralloc is controlled to allocate 4G buffers for this scenario.

For detailed modification patches, please refer to RK Patch Briefing：https://redmine.rock-chips.com/issues/425094

## Support that the video player application eliminates some customized audio and video formats

**【Question】**

Local app players or other MediaPlayer need to remove some audio and video format support. If the foreign VP9 video format has copyrighted limit, then VP9 video format support needs to be excluded, while domestic device will not be affected.

**【Resolution】**

The configuration file method is provided to help customers to reject customized audio and video formats. If you need to reject VC1VP9 video format and AACMP3 audio format on RK3588 device, modify the SDK according to the following patch (path: device/rockchip/common):

![image-13](Rockchip_Android_Multimedia_FAQ_CN/image-13.png)

![image-14](Rockchip_Android_Multimedia_FAQ_CN/image-14.png)

Manually modify and validate: Update the rt_audio_config.xml/rt_video_config.xml configuration file in the /system/etc and restart playback to confirm that it takes effect.

Other disabling audio and video formats:

```
Video options:
mpeg1、mpeg2、h263、mpeg4、wmv1、wmv2、wmv3、h264、vp8、vp9、hevc、vc1、avs、avs+、avs2、flv1、av1

Audio options:
AAC、APE、MP3、WMALOSSLESS、WMAPRO、WMAV1、WMAV2、ADPCM_IMA_QT、VORBIS、PCM_S16LE、PCM_S24LE、FLAC、MP1、MP2、AMR_WB、AMR_NB
```
## Camera 4K video recording, the color turns reddish when playback

**【Question】**                                    

On devices that support 4K encoding, when recording with Camera or using CameraRecorder video, the resulting recorded video is inconsistent with the actual image when played, and the display effect is reddish and bright.  

**【Reason】**

3. The Android native encoding framework will configure the default color gamut based on resolution for instances that do not configured colorAspect information in display. When the resolution is 4K or greater, the frame is configured with the BT2020 color gamut by default.
2. For HDR-enabled devices, HDR display will be enabled for the video source which is configured with BT2020 when decoding and playing.

**【Resolution】**

The color of HDR display will be more vivid, which belongs to the positive gain of the display, if you mind the effect, you can modify the default configuration of the framework, and configure the 4K default color gamut to use BT709.

frameworks/av to modify the default color gamut configuration function setDefaultCodecColorAspectsIfNeeded:

![image-15](Rockchip_Android_Multimedia_FAQ_CN/image-15.png)

## Switch to the black frame to display on video player

**【Question】**

By default, when videos switch, the last frame of the previous video will be maintained until the next video decoding output is displayed, which is called still frame mode. Correspondingly, if you don't want to maintain the last frame of the previous video when a new video is playing, you can inject a black frame into the Surface when the playback ends, which is called black frame mode.

**【Resolution】**

On players that use the Android MediaPlayer interfaces, the following property settings allow you to turn on black frame mode. If you need black frame mode for app development, you can add the following properties to the system prop file.。

```
setprop media.rockit.video.black_frame 1
```

