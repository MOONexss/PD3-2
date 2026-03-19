$log="$env:USERPROFILE\Documents\Servisi.log"

$time=Get-Date 

Get-Service spooler | Out-File $log -Append
Get-Service wuauserv | Out-File $log -Append

