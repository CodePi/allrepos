#! /bin/bash

echo allrepos
git status

for D in */
do
    echo "*******************"
    echo $D
    cd $D
    git status
    cd ..
done

