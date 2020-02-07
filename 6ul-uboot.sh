. /opt/fsl-imx-x11/4.9.88-2.0.0/environment-setup-cortexa7hf-neon-poky-linux-gnueabi
#!/bin/sh

#echo $PATH
#echo $CROSS_COMPILE
#export CROSS_COMPILE=/opt/fsl-imx-fb/4.1.15/environment-setup-cortexa9hf-vfp-neon-pokylinux-gnueabi
#export CROSS_COMPILE=/opt/fsl-imx-fb/4.1.15/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-
#echo $PATH
#echo $CROSS_COMPILE
find -iname "*.bak" -exec rm -rf {} \;
export ARCH=arm
#outputdir="/mnt/hgfs/dshare/7112/i.mx6ul/mfgtools_for_6UL_20180806/mfgtools_for_6UL/Profiles/Linux/OS Firmware/files/linux/"
outputdir="/mnt/hgfs/dshare/7119/outputimage/"
#make distclean
make clean
make mx6ul_14x14_evk_emmc_defconfig
make 
#make
echo "copy image (:u-boot.imx"
cp -rf u-boot-dtb.imx "$outputdir"u-boot.imx
cp -rf u-boot-dtb.imx /tftpboot/u-boot.imx

sync
sleep 1
echo "sync(:"
date
