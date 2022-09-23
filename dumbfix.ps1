Move-Item -Path C:\GMT軟體\gs -Destination C:\gs
Move-Item -Path C:\GMT軟體\programs -Destination C:\programs
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::CSIE) + ";C:\gs\gs9.07\bin",
    [EnvironmentVariableTarget]::CSIE)
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::CSIE) + ";C:\programs\gmt\bin",
    [EnvironmentVariableTarget]::CSIE)
