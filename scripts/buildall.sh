#! /bin/bash

for D in */ ; do
    if [ "$D" != "scripts/" ]; then
      echo "*******************"
      echo $D
      cd $D/tests
      make -j4 $*
      cd ../..
    fi
done
