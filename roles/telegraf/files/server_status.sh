#!/bin/bash

test -f /var/run/reboot-required && REBOOT="1" || REBOOT="0"
echo "server_status reboot_needed=$REBOOT"

#updates
UPDATES=$(apt list --upgradable 2>/dev/null | tail -n +2  | wc -l |xargs)
echo "server_status available_updates=$UPDATES"
