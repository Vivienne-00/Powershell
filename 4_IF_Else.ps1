<#
a: - Überprüfe auf deinem Gerät ein Prozess mit dem Namen "Teams" läuft und gebe die ID des Prozesses aus
b: - Wenn der Prozess nicht läuft, gebe einen folgenden String aus "Prozess Teams läuft nicht."
c: - Überprüfe ob in deinem Scriptverzeichnis die Datei "Scriptlog.log" existiert. Falls nicht erstelle die Datei mit dem Inhalt "Script gestartet"
#>

# Aufgabe a
$processName = "Teams"
$process = Get-Process -Name $processName -ErrorAction SilentlyContinue

if ($process) {
    Write-Host "Der Prozess $processName läuft mit der ID $($process.Id)."
} else {
# Aufgabe b
    Write-Host "Prozess $processName läuft nicht."
}

# Aufgabe c
$scriptDirectory = Get-Location
$logFilePath = Join-Path -Path $scriptDirectory -ChildPath "Scriptlog.log"

if (Test-Path $logFilePath) {
    Write-Host "Die Datei 'Scriptlog.log' existiert."
} else {
    Set-Content -Path $logFilePath -Value "Script gestartet"
    Write-Host "Die Datei 'Scriptlog.log' wurde erstellt."
}
