Examples:copy git source from yocto git source    
  cp -arf ~/fsl-release-bsp/build-x11/tmp/work/imx6dlsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git .   
  cd git    
  git remote add SBC-7112S_Linux_Uboot-v2017.03 https://github.com/leelin0922/u-boot.git    
  git fetch https://github.com/leelin0922/u-boot.git    
  git checkout -b SBC-7112S_Linux_Uboot-v2017.03        
  git push SBC-7112S_Linux_Uboot-v2017.03 SBC-7112S_Linux_Uboot-v2017.03    
  
  Examples:copy git commit
  git clone https://github.com/leelin0922/u-boot.git -b SBC-7112S_Linux_Uboot-v2017.03    
  git status    
  git add .   
  git commit
