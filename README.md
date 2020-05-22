# My personal keyboard configuration

#### 1. Install colemak-qwerty

https://github.com/the-devil-you-know/colemak-qwerty-x11-xkb

#### 2. Install "my-symbols" like step 1

Append to the file

```
$ sudo gedit /usr/share/X11/xkb/symbols/us
```

text

```
partial alphanumeric_keys
xkb_symbols "my-symbols" {

    name[Group1]= "My Symbols";

    key <AD08> { [ Up ] };
    key <AC07> { [ Left]};
    key <AC08> { [ Down ] };
    key <AC09> { [ Right ] };

    key <AC10> { [ BackSpace ] };
    key <AD10> { [ Delete ] };

    key <AD07> { [ Home ] };
    key <AD09> { [ End ] };

    key <AD06> { [ Page_Up ] };
    key <AC06> { [ Page_Down] };
};
```

Update the "evdev.xml" file for the "us" section

```
$ sudo gedit /usr/share/X11/xkb/rules/evdev.xml
```
text
```
        <variant>
          <configItem>
            <name>my-symbols</name>
            <description>My Symbols</description>
          </configItem>
        </variant>
```

#### 3. Install "my-russian" like step 1

Append to the file

```
$ sudo gedit /usr/share/X11/xkb/symbols/ru
```

text from the "ru-symbols" file.

Update the "evdev.xml" file for the "ru" section

```
$ sudo gedit /usr/share/X11/xkb/rules/evdev.xml
```
text
```
        <variant>
          <configItem>
            <name>my-russian</name>
            <description>My Russian</description>
          </configItem>
        </variant>
```

#### 4. Create .xmodmap

```
$ git clone https://github.com/the-devil-you-know/x11-xkb-keyboard-configuration.git
$ cd x11-xkb-keyboard-configuration
$ copy .xmodmap ~/.xmodmap
$ xmodmap .xmodmap
```


# Touchpad

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
