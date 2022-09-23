Move-Item -Path C:\GMT軟體\gs -Destination C:\gs
Move-Item -Path C:\GMT軟體\programs -Destination C:\programs
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";C:\gs\gs9.07\bin",
    [EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";C:\programs\gmt\bin",
    [EnvironmentVariableTarget]::Machine)
