<#
a: - Schreibe alle Dateinamen und ihre Dateigrösse des Verzeichnisses C:\Windows\System32 in ein Array
b: - Erstelle ein neues Array mit allen Files die grösser als 3MB sind. Speichere nur Dateinamen und Dateigrösse
c: - Loope durch alle laufenden Prozesse und beende die Schlaufe beim ersten Prozess der im Namen mit einem O beginnt. 
            Gebe den Namen des Prozesses und Anzahl Durchgänge auf der Konsole aus.
#>

# Aufgabe a
$directory = Get-ChildItem -Path C:\Windows\System32
$fileArray = @()

foreach ($file in $directory) {
    $fileInfo = [PSCustomObject]@{
        FileName = $file.Name
        FileSize = $file.Length
    }
    $fileArray += $files
}

# Aufgabe b
$filteredFiles = $fileInfoArray | Where-Object { $_.FileSize -gt 3MB }

# Aufgabe c
$processCounter = 0
$targetProcessName = "O"

foreach ($process in Get-Process) {
    $processCounter++

    if ($process.ProcessName -like "*$targetProcessName*") {
        Write-Host $targetProcessName $processCounter
        break
    }
}

Write-Host $fileArray | Format-Table -AutoSize

Write-Host $filteredFiles | Format-Table -AutoSize
