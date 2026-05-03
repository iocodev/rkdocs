## 合并整合包后编译报错:
If the compilation error after merging our patches:
```log
build/make/core/Makefile:28: error: overriding commands for target `out/*/etc/sysconfig/google.xml', previously defined at build/make/core/base_rules.mk:480
```
这是Google为了兼容Android Go以及Regular版本GMS包产生的bug, 请删除GMS包中的这部分:
This is an error caused by Google in order to be compatible with Android Go and the regular version of the GMS bundle. Please delete this part of the GMS package:

vendor/partner_gms/etc/sysconfig/Android.bp:
```Makefile
prebuilt_etc {
        name: "sysconfig_google",
        product_specific: true,
        sub_dir: "sysconfig",
        src: "google.xml",
        filename_from_src: true,
}
```

然后将vendor/partner_gms/products/*.mk中的sysconfig_google删除, 替换为:
Then delete `sysconfig_google` in `vendor/partner_gms/products/*.mk` and replace it with:
```Makefile
# Workaround for b/138542583
PRODUCT_COPY_FILES += $(ANDROID_PARTNER_GMS_HOME)/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml
```
