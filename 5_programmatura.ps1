$list=winget list --source msstore

$count=($list | Measure-Object).Count

Write-Output "Sistema ir installetas $count aplikacijas no Microsoft Store."