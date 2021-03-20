#!/bin/bash
error() {
  clear
  echo "please install wget"
  exit
}
error1() {
  clear
  echo "please install unzip"
  exit
}
ls /usr/bin | grep -w "wget" || error
ls /usr/bin | grep -w "unzip" || error1
clear
echo "Set URL"
read arg
wget $arg"/archive/main.zip"
wget $arg"/archive/master.zip"
unzip master.zip || unzip main.zip
rm master.zip
rm main.zip
clear
