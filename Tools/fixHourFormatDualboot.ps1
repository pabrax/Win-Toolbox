
$path = "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation"
$key = "RealTimeIsUniversal"

Set-ItemProperty -Path $path -Name $key -Value 0

Invoke-Expression -Command "sc.exe config w32time start=disabled"



