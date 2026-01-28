#!/bin/bash

echo "[+] Running Linux attack simulations..."

echo "[SIMULATION] System Discovery"
uname -a
./alerts/linux_alert_engine.sh "uname -a"

whoami
./alerts/linux_alert_engine.sh "whoami"

id
./alerts/linux_alert_engine.sh "id"

hostname
./alerts/linux_alert_engine.sh "HostName"

echo "[SIMULATION] Data Access"
cat /etc/passwd > /tmp/sim_data.txt
ls /home >> /tmp/sim_data.txt

echo "[+] Simulation completed."
