REPO_URL: https://github.com/coolsnowwolf/lede
  #!/bin/bash
  REPO_BRANCH=master
  FEEDS_CONF=feeds.conf.default
  CONFIG_FILE=5.15.config
  DIY_P1_SH=diy5.15.sh
  DIY_P2_SH=diy-part.sh
  SSH_ACTIONS=false
  UPLOAD_BIN_DIR=true
  UPLOAD_FIRMWARE=true
  UPLOAD_WETRANSFER=false
  UPLOAD_RELEASE=true
  TZ=Asia/Shanghai

        sudo rm -rf /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android /opt/ghc
        sudo -E apt-get -qq update
        sudo -E apt-get -qq install $(curl -fsSL https://github.com/firkerword/openwrt-list/raw/master/depends-ubuntu-2004)
        sudo -E apt-get -qq autoremove --purge
        sudo -E apt-get -qq clean
        sudo timedatectl set-timezone "$TZ"
        sudo mkdir -p /workdir
        sudo chown $USER:$GROUPS /workdir 
