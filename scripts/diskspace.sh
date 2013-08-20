#!/bin/bash
# Usage: diskspace.sh <device> <limit> <email>
#   will send an alert email to <email> if % free space in <device> goes
#   over <limit>
FREE=`df $1 | tail -n1 | awk '{print $5}' | cut -d'%' -f1`
if [ $FREE -ge $2 ]
then
    S="Alert: out of space in $1, $FREE % ${hostname} ${date}"
    df -h | mail -s "$S" $3
fi
