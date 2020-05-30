```
$ git clone https://github.com/the-devil-you-know/my-linux-configuration.git
$ cp my-linux-configuration/.xkb_keymap_ru ~/.xkb_keymap_ru
$ cp my-linux-configuration/.Xresources ~/.Xresources
$ cp my-linux-configuration/i3_config ~/.config/i3/config
$ sudo apt install xcape

$ git clone https://github.com/the-devil-you-know/colemak-qwerty-x11-xkb.git
$ cp colemak-qwerty-x11-xkb/.xkb_keymap_us ~/.xkb_keymap_us
```


#### Brightness Control

```
$ cp my-linux-configuration/.brightness_control ~/.brightness_control
$ chmod +x ~/.brightness_control
$ echo 'ivan ALL=NOPASSWD:/home/ivan/.brightness_control' | sudo EDITOR='tee -a' visudo
```


#### Touchpad

Natural scrolling and two-finger touch. Source: https://cravencode.com/post/essentials/enable-tap-to-click-in-i3wm/

```
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection

EOF
```

#### Telegram

https://github.com/telegramdesktop/tdesktop

```
$ sudo snap install telegram-desktop
```
