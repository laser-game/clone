#!/usr/bin/env bash
# actavated venv ans run django server
# wykys 2018

if [[ $(pwd) == */laser-game/utils ]]; then
    cd ../sw/manager
elif [[ $(pwd) == */laser-game ]]; then
    cd sw/manager
elif [[ $(pwd) == */laser-game/sw ]]; then
    cd manager
elif [[ $(pwd) == */laser-game/sw/manager ]]; then
    cd .
else
    echo "Error: You must go to the root folder of the project or utils!"
    exit -1
fi

if [ ! -d ".venv" ]; then
  echo ".venv not exist"
  ../../utils/venv.sh
fi

if [ ! -f lgm/db.sqlite3 ]; then
    echo "database not exist"
    ../../utils/database.sh
fi

echo "activate venv"
. .venv/bin/activate

echo "run server"
./lgm/manage.py runserver 0.0.0.0:8000
