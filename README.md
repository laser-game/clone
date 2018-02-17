# Utils

Scripts for automating routines.

## Instalation:

```bash
mkdir laser-game
cd laser-game
git clone git@github.com:laser-game/utils.git
```

## List of scripts:

### CLONE

Clone is a bash script for creating a folder tree and cloning repositories to their correct location.

#### Use:
```bash
cd utils
./clone.sh
```

### VENV

VENV create the virtual enviroment from `requirements.txt` in sw module root folder.

#### Use:
```bash
pwd # /home/wykys/projects/laser-game/sw/manager
./../../utils/venv.sh
```

### DATABASE

This script creates and initiates the database. The old database is renamed `db.sqlite3_old`. After initialization, the process for creating django superuser is started.

#### Use:
```bash
pwd # /home/wykys/projects/laser-game
./utils/database.sh
```
