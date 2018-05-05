#! /bin/bash

for D in */ ; do
    if [ "$D" != "scripts/" ]; then
	echo "*******************"
	echo $D
	cd $D/tests
	make clean
	cd ../..
    fi
done
