#!/bin/bash
if [ $(whoami) != "root" ]; then
    echo "You must be root"
    exit 1
fi
echo -e "temp:\t$(vcgencmd measure_temp)"
for id in core sdram_c sdram_i sdram_p
do
    echo -e "$id:\t$(vcgencmd measure_volts $id)"
done
