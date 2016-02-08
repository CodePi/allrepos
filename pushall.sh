#! /bin/bash

echo allrepos
git push

for D in */
do
    echo "*******************"
    echo $D
    cd $D
    git push
    cd ..
done

