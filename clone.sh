#!/usr/bin/env bash
# create directory tree and
# clone all repository in laser game project
# wykys 2018

if [[ $(pwd) == */laser-game/utils ]]; then
    cd ..
elif [[ $(pwd) == */laser-game ]]; then
    cd .
else
    echo "Error: You must go to the root folder of the project or utils!"
    exit -1
fi

mkdir sw hw

cd sw
git clone git@github.com:laser-game/manager.git
git clone git@github.com:laser-game/driver.git
git clone git@github.com:laser-game/bridge-api.git

cd ../hw
git clone git@github.com:laser-game/back.git
