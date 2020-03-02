. /opt/fsl-imx-x11/4.9.88-2.0.0/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
#!/bin/sh

find -iname "*.bak" -exec rm -rf {} \;
#echo $PATH
#echo $CROSS_COMPILE
#export CROSS_COMPILE=/opt/fsl-imx-fb/4.1.15/environment-setup-cortexa9hf-vfp-neon-pokylinux-gnueabi
#export CROSS_COMPILE=/opt/fsl-imx-fb/4.1.15/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-
#echo $PATH
#echo $CROSS_COMPILE
export ARCH=arm

#make distclean
#make clean
#make mx6dlsabresd_defconfig
#make SBC7112S_defconfig
#make SBC7112S2G_defconfig
#make SBC7819S_defconfig
make SBC7819S2G_defconfig
make u-boot.imx

echo "copy image (:u-boot-imx6dlsabresd_sd.imx"
#cp u-boot.imx /media/sf_share/7112/IMX6_L4.1.15_2.0.0_MFG-TOOL/Profiles/Linux/OS\ Firmware/files/u-boot-imx6dlsabresd_sd.imx
cp u-boot.imx /mnt/hgfs/dshare/7112/IMX6_L4.1.15_2.0.0_MFG-TOOL/Profiles/Linux/OS\ Firmware/files/u-boot-imx6dlsabresd_sd.imx
sync
sleep 1
echo "sync(:"
date

