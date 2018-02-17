#!/bin/bash
# created and init databese
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

echo "activate venv"
. .venv/bin/activate

cd lgm
rm db.sqlite3_old -f
mv db.sqlite3 db.sqlite3_old
mv core/migrations/0002_initial_data.py ./
rm core/migrations/0001_initial.py -f
./manage.py migrate
./manage.py makemigrations
mv 0002_initial_data.py core/migrations
./manage.py migrate
./manage.py createsuperuser
