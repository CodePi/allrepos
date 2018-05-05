#! /bin/bash

echo allrepos
git $*

for D in */ ; do
    if [ -d $D/.git ]; then
	echo "*******************"
	echo $D
	cd $D
	git $*
	cd ..
    fi
done
