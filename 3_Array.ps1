<#
a: - Füge zum Array "$fruits" drei weitere Früchte hinzu
b: - Gebe die letzten drei Einträge des "$fruits" Arrays auf die Konsole aus
c: - Schreibe alle laufenden Prozesse in ein Array und gebe die ersten drei Einträge auf der Konsole aus

#>

$fruits = "Apple","Pear","Banana","Orange"
$fruits += "Melon","Peach","Lemon"

Write-Host "Die letzten drei Fruechte: $($fruits[-3..-1])"

$runningProcesses = Get-Process
Write-Host "Die ersten drei laufenden Prozesse: $($runningProcesses[0..2])"