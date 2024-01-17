<#
a: - Nehme vom String1 die ersten 18 Zeichen und vom String2 die letzten 6 Zeichen
            und setzte sie zu einem neuen String zusammen. Speichere den String in eine neue Variabel.
            Gib den neuen String auf die Konsole aus.

b: - Lösche den Begriff "Windows " aus dem neuen String und speichere das Resultat in eine neue Variabel.
            Gib das Resultat auf die Konsole aus.

c: - Schreibe den Pfad des aktuellen Scriptes auf die Konsole.

d: - Schreibe den Namen deines Benutzers in eine Variable und gib ihn auf die Konsole aus.
            Benutze die passende Umgebungsvariable dafür.

e: - Schreibe den Namen deines Laptops in eine Variable und gib ihn auf die Konsole aus.
            Benutze die passende Umgebungsvariable dafür.
#>


$string1 = "Windows PowerShell ist ein leistungsfähiges Tool zur Automatisierung von Aufgaben"
$string2 = "Digital Talent"

#Aufgabe a

$substring1 = $string1.Substring(0, 18)
$substring2 = $string2.Substring($string2.Length - 6)

$newString = $substring1 + $substring2
Write-Host $newString

#Aufgabe b
$newString2 = $newString.Trim("Windows")
Write-Host $newString2

#Aufgabe c 
Write-Host "Pfad des aktuellen Skripts: $PSScriptRoot"

#Aufgabe d
$benutzername = $env:USERNAME
Write-Host "Benutzername: $benutzername"

#Aufgabe e
$laptop = $env:COMPUTERNAME
Write-Host "Laptopname: $laptop"