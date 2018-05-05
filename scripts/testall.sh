#! /bin/bash

set -e

for D in */ ; do
    if [ "$D" != "scripts/" ]; then
      echo "*******************"
      echo $D
	    cd $D/tests
	    ./runtests.sh
	    cd ../..
    fi
done
