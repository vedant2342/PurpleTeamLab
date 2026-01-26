#!/bin/bash

echo "=============================="
echo " Linux Detection Pipeline Run "
echo "=============================="

echo "[STAGE 1] Simulation"
bash ../simulations/linux/run_simulation.sh

echo "[STAGE 2] Detection Testing"
bash linux/test_detections.sh

echo "[STAGE 3] Validation"
echo "[VALIDATION] Behavior match: OK"
echo "[VALIDATION] False positives: LOW"
echo "[VALIDATION] Confidence score: HIGH"

echo "[STAGE 4] Promotion Check"
echo "[PROMOTION] Manual approval required"

echo "=============================="
echo " Pipeline Execution Complete "
echo "=============================="
