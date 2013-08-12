#!/bin/sh

echo Setting up directories...

if [ $# -ne 1 ]; then
	echo OOPS! Wrong number of arguments.
	exit 1
fi;

cd $1

mkdir -vp bin
mkdir -vp doc/work
mkdir -vp doc/self
mkdir -vp dl/aur
mkdir -vp man/gfx
mkdir -vp man/lang
mkdir -vp man/rfc
mkdir -vp media/book
mkdir -vp media/pod
mkdir -vp media/lectures
mkdir -vp prj/gfx
mkdir -vp prj/code/tmp
mkdir -vp prj/foto
mkdir -vp prj/music
mkdir -vp prj/www
mkdir -vp prj/cfg

echo Directories set up.
