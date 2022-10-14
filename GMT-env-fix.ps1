[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\gs\gs9.07\bin",
    [EnvironmentVariableTarget]::User)
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\programs\gmt\bin",
    [EnvironmentVariableTarget]::User)

Move-Item -Path C:\GMT軟體\gs -Destination C:\gs
Move-Item -Path C:\GMT軟體\programs -Destination C:\programs
Invoke-RestMethod -URI "https://raw.githubusercontent.com/H3XDaemon/GMT/main/gmtest.bat" -OutFile "D:\gmtest.bat"
Invoke-RestMethod -URI "https://raw.githubusercontent.com/H3XDaemon/GMT/main/GMT-env-fix.ps1" -OutFile "D:\GMT-env-fix.bat"
Start-Process "cmd.exe" "/c D:gmtest.bat"
