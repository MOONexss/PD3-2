$score=100

$def=Get-MpComputerStatus

if($def.RealTimeProtectionEnabled -eq $false){$score-=50}

if($def.AntivirusSignatureAge -gt 3){$score-=20}

if($def.QuickScanAge -gt 7){$score-=20}

Write-Output "Sistemas drosibas reitings: $score / 100"

