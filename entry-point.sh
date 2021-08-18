#!/bin/bash
set -e

source /usr/cernroot/root/bin/thisroot.sh
source /usr/gS/bin/Gw-env.sh
source /usr/local/geant4.9.6.p04/build/geant4make.sh

exec "$@"
