#!/bin/bash

REPOS=(Configurator ConfiguratorJson MultikeyMap ResultsMap Serialator ThreadSafeQueue)

if [ "$1" = "https" ]; then
    URL="https://github.com/CodePi"
else
    URL="git@github.com:CodePi"
fi

echo $1

for D in ${REPOS[@]}; do
    [[ -d $D ]] || git clone $URL/$D.git
done

