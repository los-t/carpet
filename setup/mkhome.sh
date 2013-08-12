#!/bin/sh

echo Setting up directories...

if [ $# -ne 1 ]; then
	echo OOPS! Wrong number of arguments.
	exit 1
fi;

cd $1

mkdir -p bin
mkdir -p doc/work
mkdir -p dl
mkdir -p man/gfx
mkdir -p man/lang
mkdir -p man/rfc
mkdir -p media/book
mkdir -p media/pod
mkdir -p media/lectures
mkdir -p prj/gfx
mkdir -p prj/code/tmp
mkdir -p prj/foto
mkdir -p prj/music
mkdir -p prj/www

echo Directories set up.
