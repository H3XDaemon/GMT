Move-Item -Path C:\GMT軟體\gs -Destination C:\gs
Move-Item -Path C:\GMT軟體\programs -Destination C:\programs
Invoke-RestMethod -URI "https://raw.githubusercontent.com/H3XDaemon/GMT/main/1027.bat" -OutFile "D:\1027.bat"

[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\gs\gs9.07\bin",
    [EnvironmentVariableTarget]::User)
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\programs\gmt\bin",
    [EnvironmentVariableTarget]::User)

Start-Process /c 'D:\1027.bat'




