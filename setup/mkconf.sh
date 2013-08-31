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
ln -vs $CFGPATH/cfg/_vimrc $HOMEPATH/.vimrc
ln -vs $CFGPATH/cfg/_zshenv $HOMEPATH/.zshenv
ln -vs $CFGPATH/cfg/_zshrc $HOMEPATH/.zshrc

mkdir -vp $XDGCFGPATH/i3
ln -vs $CFGPATH/cfg/i3/config $XDGCFGPATH/i3/config


if [ $RET -eq 0 ]; then
	echo Configuration created.
else
	echo Could not create configuration
fi;
