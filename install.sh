#/bin/bash

echo "Welcome to glibc-wine installer"
echo "Before we proceed, we need to configure your internal storage to be accessible"
sleep 2
echo "Updating termux-am and all dependencies"
apt update -y && apt install termux-am -y
apt upgrade -y
apt install x11-repo -y
apt install pulseaudio zenity termux-x11-nightly
echo "Grant access to your internal storage"
termux-setup-storage
sleep 5
echo "Downloading glibc-wine-prefix and it's files..."
wget --progress=bar:force -P $PREFIX/tmp https://github.com/airidosas252/glibc-wine/releases/download/glibc/glibc-wine-prefix.tar.xz
tar -xf $PREFIX/tmp/glibc-wine-prefix.tar.xz -C $PREFIX/
wget --progress=bar:force -P $PREFIX/tmp https://github.com/airidosas252/glibc-wine/releases/download/glibc/glibc-wine-libraries.tar.xz
tar -xf $PREFIX/tmp/glibc-wine-libraries.tar.xz -C $PREFIX/
echo "Downloading Wine 9.1..."
wget --progress=bar:force -P $PREFIX/tmp https://github.com/airidosas252/glibc-wine/releases/download/wine/wine-9.1-wow64-esync.tar.xz
tar -xf $PREFIX/tmp/wine-9.1-wow64-esync.tar.xz -C $PREFIX/glibc/opt/
rm -r $PREFIX/tmp/*
glibc-wine --install