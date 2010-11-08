#!/bin/bash
make clean
make all
JIRKA=jk@jk-nb
scp main.hex $JIRKA:/tmp
ssh $JIRKA avrdude -P /dev/ttyS0 -p atmega162 -c dasa -Uflash:w:/tmp/main.hex
