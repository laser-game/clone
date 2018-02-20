#!/usr/bin/env bash
# actavated venv ans run driver
# wykys 2018

if [[ $(pwd) == */laser-game/utils ]]; then
    cd ../sw/driver
elif [[ $(pwd) == */laser-game ]]; then
    cd sw/driver
elif [[ $(pwd) == */laser-game/sw ]]; then
    cd driver
elif [[ $(pwd) == */laser-game/sw/driver ]]; then
    cd .
else
    echo "Error: You must go to the root folder of the project or utils!"
    exit -1
fi

echo "activate venv"
. .venv/bin/activate

echo "run driver"
python lgd/main.py
