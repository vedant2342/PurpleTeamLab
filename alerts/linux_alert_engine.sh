#!/bin/bash

ALERT_LOG="alerts/alerts.log"
TIME=$(date '+%Y-%m-%d %H:%M:%S')
USER=$(whoami)
HOST=$(hostname)

alert() {
    TYPE="$1"
    COMMAND="$2"
    MITRE="$3"
    SEVERITY="$4"

    echo ""
    echo "  ***¨ ALERT DETECTED  ***   "
    echo "-----------------------------"
    echo "Time: $TIME"
    echo "Host: $HOST"
    echo "User: $USER"
    echo "Type: $TYPE"
    echo "Command: $COMMAND"
    echo "MITRE: $MITRE"
    echo "Severity: $SEVERITY"
    echo "Platform: Linux"
    echo "-----------------------------"
    echo ""

    echo "$TIME | Linux | $HOST | $USER | $TYPE | $COMMAND | $MITRE | $SEVERITY" >> "$ALERT_LOG"
}

CMD="$1"

case "$CMD" in
    *uname*)
        alert "System Discovery" "uname -a" "T1082" "MEDIUM"
        ;;
    *whoami*)
        alert "User Discovery" "whoami" "T1033" "LOW"
        ;;
    *id*)
        alert "User Enumeration" "id" "T1033" "LOW"
        ;;
    *"/etc/passwd"*)
        alert "Account Enumeration" "cat /etc/passwd" "T1087" "MEDIUM"
        ;;
    *"/etc/shadow"*)
        alert "Credential Access" "cat /etc/shadow" "T1003" "HIGH"
        ;;
    *)
        echo "No alert rule matched for: $CMD"
        ;;
esac

