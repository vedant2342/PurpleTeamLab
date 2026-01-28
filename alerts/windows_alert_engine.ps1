$Time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$User = whoami
$HostName = hostname
$LogFile = "alerts/alerts.log


function Alert($Type, $Command, $Mitre, $Severity) {
	Write-Host "   ***  ALERT DETECTED  ***   "
	Write-Host "------------------------------"
	Write-Host "Time: $Time"
	Write-Host "Host: $HostName"
	Write-Host "User: $User"
	Write-Host "Type: $Tyep"
	Write-Host "Command: $Command"
	Write-Host "MITRE: $Mitre"
	Write-Host "Severity: $Severity"
	Write-Host "Platform: Windows"
	Write-Host "------------------------------"


	"$Time | Windows | $HostName | $User | $Type | $Command | $Mitre | $Severity" | Out-File -Append $LogFile
}


$cmd = $args[0]

if($cmd -match "systeminfo") {
	Alert "System Discovery" "systeminfo" "T1082" "MEDIUM"
}
elseif ($cmd -match "whomai") {
	Alert "User Discovery" "whoami" "T1033" "LOW"
}
elseif ($cmd -match "Get-LocalUser") {
	Alert("Account Enumeration" "Get-LocalUser" "T1087" "MEDIUM"
}
elseif ($cmd -match "Get-Process") {
	Alert("Process Discovery" "Get-Process" "T1057" "LOW"
}
elseif ($cmd -match "C\\Users") {
	Alert "Data Access" "C:\\Users Enumeration" "T1083" "MEDIUM"
}


