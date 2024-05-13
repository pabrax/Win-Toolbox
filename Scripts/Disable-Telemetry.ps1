Write-Host "Desactivando telemetria..."

# disable via customer experience inprovement program
$path = "\Microsoft\Windows\Customer Experience Improvement Program\"
$tasks = @("Consolidator", "UsbCeip")

foreach ($item in $tasks) {
    Disable-ScheduledTask -TaskPath $path -TaskName $item > $null
}

# disable via application experience path
$path = "\Microsoft\Windows\Application Experience\"
$tasks = @("Microsoft Compatibility Appraiser", "ProgramDataUpdater", "StartupAppTask")

foreach ($item in $tasks) {
    Disable-ScheduledTask -TaskPath $path -TaskName $item > $null
}

#disable via regedit
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
$registryName = "AllowTelemetry"
Set-ItemProperty -Path $registryPath -Name $registryName -Value 0


Write-Host "Telemetria desactivada Con Exito"
Write-Host ""
