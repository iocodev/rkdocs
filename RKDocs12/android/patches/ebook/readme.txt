补丁说明：

lyx@ubuntu:~/rk3566-11-eink/RKDocs/android/patches/ebook$ tree
.
├── 0001-arm64-dts-rk3566-rk817-eink-w103-add-backlight-suppo.patch  添加背光功能，可参考此补丁
├── 0001-drivers-input-sensor-hall-sensor-mh248-support-ebook.patch     添加皮套（hall）唤醒功能，需要打这个补丁
├── 0001-rk3566_eink-build-64bit-android-platform.patch   如果要编译64位android，需要打此补丁
└── rkr7_patchs  该目录下的补丁是基于android-11.0-ebook-rkr7版本的必要补丁包
    ├── bootable
    │   └── recovery
    │       ├── 0001-install-Support-early-loader-upgrade-method.patch  支持rk loader ota升级补丁1
    │       └── 0002-Optimize-error-handling.patch  支持rk loader ota升级补丁2
    ├── build
    │   └── make
    │       └── core
    │           └── 0001-build-Add-upgrading-logo.patch  支持logo分区ota升级补丁1
    ├── device
    │   └── rockchip
    │       ├── common
    │       │   ├── 0001-chmod-dev-waveform-for-ebook.patch  支持元太regal模式补丁1
    │       │   ├── 0002-Add-upgrading-logo-feature.patch 支持logo分区ota升级补丁2
    │       │   └── 0003-A-B-support-logo-for-ebook.patch 支持logo分区ota升级补丁3
    │       └── rk356x
    │           ├── 0001-rk3566_eink-add-dir-resolution-for-app-preinstall-fu.patch  增加APK预置目录
    │           ├── 0002-rk3566-eink-disable-autoPowerModes.patch  可选非必要补丁，关闭autoPowerMode，减少待机时的后台唤醒次数
    │           ├── 0003-ebook-add-dev-waveform-sepolicy.patch   支持元太regal模式补丁2
    │           ├── 0004-rk356x-support-logo-upgrade-for-ebook.patch  支持logo分区ota升级补丁4
    │           └── 0005-rk3566_eink-A-B-pamameter-logo-logo_a-logo_b-to-supp.patch  支持logo分区ota升级补丁5
    ├── frameworks
    │   └── base
    │       ├── 0001-Eink-make-set-api-dpi-function-only-effect-activity.patch  DPI调节补丁1
    │       ├── 0002-Eink-Filter-RockVideoPlayer-apk-from-its-packagename.patch  过滤RockVideoPlayer apk，不参与DPI，模式的调节
    │       └── 0003-Eink-replace-some-methods-name-to-avoid-same-name-fr.patch  DPI调节补丁2
    │       └── 0004-EinkManager-add-EPD_AUTO_DU-and-EPD_AUTO_DU4-mode.patch  增加EPD_AUTO_DU和EPD_AUTO_DU4模式补丁1
    │       └── 0005-Eink-Realize-the-DPI-setting-in-App-level-and-solve-.patch  修改DPI方案，解决已知的一些问题
    ├── hardware
    │   ├── interfaces
    │   │   └── 0001-health-wakeup-per-30-minutes-when-no-charging-to-red.patch  可选非必要补丁，可减少healthd待机时的后台唤醒次数
    │   └── rockchip
    │       └── hwcomposer
    │           └── einkhwc
    │               ├── 0001-support-color-eink1.patch  支持元太彩屏补丁，具体屏需要找元太要彩色算法库，并替换次补丁中的库
    │               ├── 0002-support-eink-regal-mode-use-eink-so.patch  支持元太regal模式补丁3，具体屏需要找元太要regal算法库和相应的波形文件
    │               ├── 0003-add-FALLTHROUGH_INTENDED-to-fix-build-err.patch  修复编译错误
    │               └── 0004-adjust-vsync-when-suspend-and-resume-to-avoid-screen.patch  休眠唤醒概率性显示异常（多为黑屏）补丁
    │               └── 0005-add-EPD_AUTO_DU-and-EPD_AUTO_DU4-mode.patch 增加EPD_AUTO_DU和EPD_AUTO_DU4模式补丁2
    ├── kernel
    │   ├── 0001-drm-rockchip-ebc_dev-release-version-v2.09.patch  墨水屏驱动补丁1，支持多颗墨水屏pmic兼容补丁1
    │   ├── 0002-drm-rockchip-ebc_dev-release-version-v2.10.patch  墨水屏驱动补丁2，auto模式增加锁保护
    │   ├── 0003-regulator-xz3216-add-mode-setting-support.patch  DCDC xz3216驱动补丁1，支持模式设置
    │   ├── 0004-drm-rockchip-ebc_dev-release-version-v2.11.patch  支持元太regal模式补丁3，墨水屏驱动补丁3，增加/dev/waveform节点
    │   └── 0005-regulator-xz3216-add-resume-function.patch  DCDC xz3216驱动补丁2，解决reboot死机问题
    │   └── 0006-drm-rockchip-ebc_dev-release-version-v2.12.patch 增加EPD_AUTO_DU和EPD_AUTO_DU4模式补丁3，墨水屏驱动补丁4
    │   └── 0007-drivers-mfd-rk808-disable-rk817-int-when-shutdown.patch 解决关机过程频繁按power键导致系统死机问题
    ├── rkbin
    │   ├── 0001-rk3568-bl31-update-version-to-v2.08.patch  修复待机概率性系统重启问题
    │   └── 0002-rk3568-bl31-update-version-to-v2.09.patch  修复待机概率性功耗不对问题
    ├── RKTools
    │   └── 0001-pack-logo_a-and-logo_b.patch 支持logo分区ota升级补丁6
    └── u-boot
        └── 0001-drivers-video-rk_eink-support-multi-pmics-define.patch 支持多颗墨水屏pmic兼容补丁2
        └── 0002-configs-rk3566-eink.config-enable-gpio-leds.patch   uboot增加led灯的支持

21 directories, 38 files