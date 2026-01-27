Write-Host "=== Windows Attack Simulation ==="

# Reconnaissance
Write-Host "[SIMULATION] System Discovery"
systeminfo
whoami
hostname
Get-LocalUser
Get-LocalGroup

# Environment discovery
Write-Host "[SIMULATION] Environment Discovery"
Get-ChildItem Env:

# Process discovery
Write-Host "[SIMULATION] Process Discovery"
Get-Process | Select-Object -First 10

# Data access simulation
Write-Host "[SIMULATION] Data Access"
Get-ChildItem C:\Users -Recurse -ErrorAction SilentlyContinue | Select-Object -First 10

Write-Host "=== Simulation Complete ==="
