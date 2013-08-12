#!/bin/sh

if [ $# -ne 1 ]; then
	echo OOPS! Wrong number of arguments.
	exit 1
fi;

MYNAME=carpet
RET=0

HOMEPATH=$1
CFGPATH=$HOMEPATH/prj/cfg/$MYNAME
GITPATH=git@github.com:los-t/$MYNAME.git

echo "Cloning self to $CFGPATH"
git clone $GITPATH $CFGPATH/$MYNAME; RET=$?;


if [ $RET -eq 0 ]; then
	echo Configuration created.
else
	echo Could not create configuration
fi;
