#! /bin/bash

for D in */ ; do
    if [ -d $D/.git ]; then
	echo "*******************"
	echo $D
	cd $D/tests
	make clean
	cd ../..
    fi
done
