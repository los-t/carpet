#!/bin/sh

if [ $# -ne 1 ]; then
	echo OOPS! Wrong number of arguments.
	exit 1
fi;

MYNAME=carpet
RET=0

HOMEPATH=$1
CFGPATH=$HOMEPATH/prj/cfg/$MYNAME
XDGCFGPATH=$HOMEPATH/.config
GITPATH=git@github.com:los-t/$MYNAME.git

echo "Cloning self to $CFGPATH"
git clone $GITPATH $CFGPATH; RET=$?;

ln -vs $CFGPATH/cfg/_profile $HOMEPATH/.profile
ln -vs $CFGPATH/cfg/_bashrc $HOMEPATH/.bashrc
ln -vs $CFGPATH/cfg/_zshenv $HOMEPATH/.zshenv
ln -vs $CFGPATH/cfg/_zshrc $HOMEPATH/.zshrc
ln -vs $CFGPATH/cfg/_gitconfig $HOMEPATH/.gitconfig

ln -vs $CFGPATH/cfg/_Xresources $HOMEPATH/.Xresources
cp -v $CFGPATH/bin/xrandr.sh $HOMEPATH/bin/xrandr.sh
ln -vs $CFGPATH/cfg/_xinitrc $HOMEPATH/.xinitrc
echo "NOTE: Remember to add proper lines to ~/bin/xrandr.sh"

mkdir -vp $XDGCFGPATH/i3
ln -vs $CFGPATH/cfg/i3/config $XDGCFGPATH/i3/config

mkdir -vp $XDGCFGPATH/i3status
ln -vs $CFGPATH/bin/vpnto $HOMEPATH/bin/vpnto
ln -vs $CFGPATH/cfg/i3status/config $XDGCFGPATH/i3status/config

ln -vs $CFGPATH/cfg/_vimrc $HOMEPATH/.vimrc
mkdir -vp $HOMEPATH/.vim/colors
ln -vs $CFGPATH/cfg/vim/dgrin.vim $HOMEPATH/.vim/colors/dgrin.vim

if [ $RET -eq 0 ]; then
	echo Configuration created.
else
	echo Could not create configuration
fi;
