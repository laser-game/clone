[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

# Utils

Scripts for automating routines.

## Instalation:

```bash
mkdir laser-game
cd laser-game
git clone git@github.com:laser-game/utils.git
```

## List of scripts:

### APT

It installs the required `.deb` packages.

#### Use:
```bash
./apt.sh

### CLONE

Clone is a bash script for creating a folder tree and cloning repositories to their correct location.

#### Use:
```bash
pwd # /home/wykys/projects/laser-game/utils
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
### SERVER

This script runs the django server.

#### Use:
```bash
pwd # /home/wykys/projects/laser-game
./utils/server.sh
```

### DRIVER

This script runs the driver.

#### Use:
```bash
pwd # /home/wykys/projects/laser-game
./utils/driver.sh
```
