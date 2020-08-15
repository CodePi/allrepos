#! /bin/bash

set -e

for D in */ ; do
  if [ -d "$D/tests" ]; then
    echo "*******************"
    echo $D
    cd $D/tests
    ./runtests.sh
    cd ../..
  fi
done
