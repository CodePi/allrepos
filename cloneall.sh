#!/bin/bash

REPOS=(Configurator MultikeyMap ResultsMap Serialator ThreadedQueue)

for D in ${REPOS[@]}
do
    [[ -d $D ]] || git clone git@github.com:CodePi/$D.git
done

