$downloads="$env:USERPROFILE\Downloads"
$doc="$env:USERPROFILE\Documents\PDF_Backup.zip"

$files=Get-ChildItem $downloads -Filter *.pdf |
Where-Object {$_.LastWriteTime -gt (Get-Date).Addhours(-48)}

Compress-Archive -Path $files.FullName -DestinationPath $doc -Force