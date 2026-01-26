#!/bin/bash

echo "[+] Running Linux attack simulations..."

echo "[SIMULATION] System Discovery"
uname -a
whoami
id
hostname

echo "[SIMULATION] Data Access"
cat /etc/passwd > /tmp/sim_data.txt
ls /home >> /tmp/sim_data.txt

echo "[+] Simulation completed."
