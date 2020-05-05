#!/bin/bash
vers=2.02.0
subvers=2.02.02
wget https://downloads.sf.net/tintin/tintin-${subvers}.tar.gz
tar xvfz tintin-${subvers}.tar.gz
cd tt/src
./configure
make install
