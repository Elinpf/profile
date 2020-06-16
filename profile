# ~/.profile: executed by Bourne-compatible login shells.

EDITOR=vim; export EDITOR

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

# 映射按键配置
#if [ -f $HOME/.Xmodmap ]; then
  #/usr/bin/xmodmap $HOME/.Xmodmap
#fi

# 按键映射
# https://github.com/mooz/xkeysnail
if [ -f $HOME/.keymap_config.py ]; then
  nohup /usr/local/bin/xkeysnail $HOME/.keymap_config.py >/dev/null 2>&1 &
fi

# 科学上网
if [ -f $HOME/.shandowsocks_sslocl_config.json ]; then
  nohup sslocal -c $HOME/.shandowsocks_sslocl_config.json >/dev/null 2>&1 &
fi

# 开启蓝牙
systemctl start bluetooth.service

# Games 小猫咪
#if [ -f /usr/games/oneko ]; then
  #nohup /usr/games/oneko -speed 10 -idle 500 -sakura >/dev/null 2>&1 &
#fi

mesg n || true

PATH=$PATH:/opt/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 3FF7C42B-965E-0FC6-DF9F-351F7069FCE1
