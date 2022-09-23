Move-Item -Path C:\GMT軟體\gs -Destination C:\gs
Move-Item -Path C:\GMT軟體\programs -Destination C:\programs
Invoke-WebRequest -URI "https://raw.githubusercontent.com/H3XDaemon/GMT/main/1027.bat" -OutFile "C:\Users\CSIE\Documents\1027.bat"
& .C:\Users\CSIE\Documents\1027.bat

[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\gs\gs9.07\bin",
    [EnvironmentVariableTarget]::User)
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";C:\programs\gmt\bin",
    [EnvironmentVariableTarget]::User)
