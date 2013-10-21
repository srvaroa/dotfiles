#!/bin/bash
# Usage: diskspace.sh <device> <limit> <email>
#   will send an alert email to <email> if % used space in <device> goes
#   above <limit>
USED=`df $1 | tail -n1 | awk '{print $5}' | cut -d'%' -f1`
if [ $USED -gt $2 ]
then
    S="Alert: running out of space in $1, $USED % ${hostname} ${date}"
    df -h | mail -s "$S" $3
fi
