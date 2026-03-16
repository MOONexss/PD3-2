$doc="$env:USERPROFILE\Documents\Warnings.txt"

$events=Get-EventLog Application -EntryType Warning -After (Get-Date).AddDays(-3)
$group=$events | Group-Object Source | Sort-Object Count -Descending | Select-Object -First 3
$group | Out-File $doc 