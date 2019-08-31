#! /bin/bash
#
# Rudimentary calculation of remaining battery life, and notification

WARNING_THRESHOLD_MINS=30
CRITICAL_THRESHOLD_MINS=10

WARNING_TOKEN_FILE=/tmp/i3battcheck_warned

if [ ! -z "$(cat /sys/class/power_supply/BAT0/uevent | grep -i discharging)" ]
then
	charge_now=$(cat /sys/class/power_supply/BAT0/uevent | grep POWER_SUPPLY_CHARGE_NOW= | cut -f2 -d=)
	current_now=$(cat /sys/class/power_supply/BAT0/uevent | grep POWER_SUPPLY_CURRENT_NOW= | cut -f2 -d=)
	remaining=$(echo "$charge_now * 60 / $current_now" | bc)
	if [ "$remaining" -lt "$WARNING_THRESHOLD_MINS" ] && [ ! -f "$WARNING_TOKEN_FILE" ]
	then
		notify-send -u normal -t 60000 \
			"Battery level low: ${remaining} mins remaining"
		touch $WARNING_TOKEN_FILE
	elif [ "$remaining" -lt "$CRITICAL_THRESHOLD_MINS" ]
	then
		notify-send -u critical -t 60000 \
			"Battery level critical: ${remaining} mins remaining"
	fi
fi
