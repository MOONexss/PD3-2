$doc="$env:USERPROFILE\Documents\LielieProcesi.csv"

Get-Process | 
Where-Object { $_.WorkingSet -gt 150MB -and $_.Name -ne "msedge" } 
Select-Object Name,Id,WorkingSet | 
Export-Csv $doc -NoTypeInformation