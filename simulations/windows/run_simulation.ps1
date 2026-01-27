Write-Host "=== Windows Attack Simulation ==="

if ($IsLinux) {
    Write-Host "[INFO] Running on Linux host - Windows commands simulated only"
    Write-Host "[SIMULATION] Windows Reconnaissance (Simulated)"
    Write-Host "systeminfo"
    Write-Host "whoami"
    Write-Host "Get-LocalUser"
    Write-Host "Get-LocalGroup"
} else {
    Write-Host "[SIMULATION] System Discovery"
    systeminfo
    whoami
    hostname
    Get-LocalUser
    Get-LocalGroup

    Write-Host "[SIMULATION] Environment Discovery"
    Get-ChildItem Env:

    Write-Host "[SIMULATION] Process Discovery"
    Get-Process | Select-Object -First 10

    Write-Host "[SIMULATION] Data Access"
    Get-ChildItem C:\Users -Recurse -ErrorAction SilentlyContinue | Select-Object -First 10
}

Write-Host "=== Simulation Complete ==="
