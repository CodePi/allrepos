#! /bin/bash

for D in */ ; do
    if [ -d "$D/tests" ]; then
      echo "*******************"
      echo $D
      cd $D/tests
      make -j4 $*
      cd ../..
    fi
done
