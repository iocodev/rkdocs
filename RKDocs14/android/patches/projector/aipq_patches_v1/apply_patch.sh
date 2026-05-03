#!/bin/bash
local_path=RKDocs/android/patches/projector/aipq_patches_v1
echo "-----------------------------------------------------------------"
echo "apply_patch for projector/aipq_patches_v1..."
echo "-----------------------------------------------------------------"
echo "1.apply patch to vendor/rockchip/hardware/interfaces..."
path_interfaces=vendor/rockchip/hardware/interfaces
cd ../../../../../$path_interfaces 
git reset --hard 90dfdbc85a4a2e787f1541ce1f3fc1bbb8b6b49d
git am ../../../../$local_path/$path_interfaces/000*
cd -

echo "-----------------------------------------------------------------"
echo "2.apply patch to vendor/rockchip/hardware/interfaces/codec2..."
path_codec2=vendor/rockchip/hardware/interfaces/codec2
cd ../../../../../$path_codec2
git reset --hard 4295a95887a2875c62dab2ab03086819a4dc58ce
git am ../../../../../$local_path/$path_codec2/000*
cd -

echo "-----------------------------------------------------------------"
echo "3.apply patch to vendor/rockchip/hardware/interfaces/rockit..."
path_rockit=vendor/rockchip/hardware/interfaces/rockit
cd ../../../../../$path_rockit
git reset --hard 1ee5045b019688f419a73a9f9033c2aafc62643b
git am ../../../../../$local_path/$path_rockit/000*
cd -

echo "-----------------------------------------------------------------"
echo "4.apply patch to frameworks/av..."
path_av=frameworks/av
cd ../../../../../$path_av
#git reset --hard 1ee5045b019688f419a73a9f9033c2aafc62643b
git am ../../$local_path/$path_av/000*
cd -

echo "-----------------------------------------------------------------"
echo "apply patch end"
echo "-----------------------------------------------------------------"
echo "pls BOARD_ENABLE_AIPQ_PROJECTOR_PRODUCT := true to enable patch!!"
echo "-----------------------------------------------------------------"
