#! /bin/bash

echo allrepos
git pull

for D in */
do
    echo "*******************"
    echo $D
    cd $D
    git pull
    cd ..
done

