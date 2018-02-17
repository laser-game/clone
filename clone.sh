#!/bin/sh
# areatet directory tree and
# clone all repository in laser game project
# wykys 2018

mkdir sw hw

cd sw
git clone git@bitbucket.org:laser-game/manager.git
git clone git@bitbucket.org:laser-game/driver.git
git clone git@bitbucket.org:laser-game/bridge-api.git
