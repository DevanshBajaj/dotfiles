#!/bin/bash

# a system info script written by yours truly
# it's hardcoded stuff, lulz

red="\e[31m"
grn="\e[32m"
ylw="\e[33m"
cyn="\e[36m"
blu="\e[34m"
prp="\e[35m"
bprp="\e[35;1m"
rst="\e[0m"

echo

color-echo()
{  # print with colors
  echo -e " $grn$1  $rst$2"
}

# kernel
#color-echo '		kernel' "$(uname -smr)"

# uptime
up=$(</proc/uptime)
up=${up//.*}                # string before first . is seconds
days=$((${up}/86400))       # seconds divided by 86400 is days
hours=$((${up}/3600%24))    # seconds divided by 3600 mod 24 is hours
mins=$((${up}/60%60))       # seconds divided by 60 mod 60 is mins

echo "$(fortune -sa)"    # display a random short quote at start
echo -e "$red======================================="
echo

# shell
color-echo 'shell  '   		'   		zsh'

# wm
color-echo 'wm     '   		'   		i3'

# distro
color-echo 'distro '   		'   		Ubuntu'

# GTK Theme
color-echo 'GTK Theme '   	'   	Arc-Darker [GTK2/3]'

# Icon Theme
color-echo 'Icon Theme '   	'   	la-capitaine-icon-theme'

# Font
color-echo 'Font '   		'   		System San Francisco'

# CPU
color-echo 'CPU '   		'   		Intel Core i7-7700HQ'

# RAM
color-echo 'RAM '   		'   		16GB @ 2400MHz'

# ascii art
echo
echo -e " | | devansh@Deadly"
echo
# colors
echo -e " $red▪$rst $grn▪$rst $blu▪$rst $ylw▪$rst $cyn▪$rst $prp▪$rst $bprp▪$rst"

echo
echo
