#!/bin/bash
clear
echo "Set URL"
read arg
wget $arg"/archive/main.zip"
wget $arg"/archive/master.zip"
unzip master.zip || unzip main.zip
rm master.zip
rm main.zip
clear
