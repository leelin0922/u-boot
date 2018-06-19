Examples:
  #copy git source from yocto git source    
  cp -arf ~/fsl-release-bsp/build-x11/tmp/work/imx6dlsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git .   
  cd git    
  git remote add SBC-7112S_Linux_Uboot-v2017.03 https://github.com/leelin0922/u-boot.git    
  git fetch https://github.com/leelin0922/u-boot.git    
  git checkout -b SBC-7112S_Linux_Uboot-v2017.03    
  git branch --delete master    
  git branch --delete imx_v2017.03_4.9.11_1.0.0_ga    
  git push SBC-7112S_Linux_Uboot-v2017.03 SBC-7112S_Linux_Uboot-v2017.03    
