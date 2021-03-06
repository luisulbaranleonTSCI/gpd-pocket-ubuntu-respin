#!/bin/bash

mkdir -p update-kernel
cd update-kernel

if [ ! -f gpdpocket-20170921-kernel-files.zip ]; then
	 echo "Downloading kernel files...."
	 wget https://bitbucket.org/simone_nunzi/gpdpocket-kernel/downloads/gpdpocket-20170921-kernel-files.zip
fi

echo "Extracting kernel files..."
unzip -o gpdpocket-20170921-kernel-files.zip

echo "Installing kernel..."
sudo dpkg -i *.deb

echo "Update grub..."
sudo update-grub
