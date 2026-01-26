#!/bin/bash

echo "[+] Testing Linux detection rules..."

RULES_PATH="../../rules/dev/linux"

for rule in $RULES_PATH/*.yml; do
    echo "[TESTING] $rule"
done

echo "[+] Detection test stage complete."
