#! /bin/bash

for D in */ ; do
    if [ -d $D/.git ]; then
	echo "*******************"
	echo $D
	cd $D/tests
	./runtests.sh
	cd ../..
    fi
done
