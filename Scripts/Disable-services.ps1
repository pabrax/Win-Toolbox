Write-Host "Desactivando servicios..."

# you can add more services or comment out the ones you don't need
$services = @(

    "MapsBroker",           # maps manager 
    "Spooler",              # print spooler
    "Fax",                  # fax
    "DiagTrack",            # diagnostics tracking
    "dmwappushservice",     # device management wireless application
    "WbioSrvc",             # windows biometric service
    "lfsvc",                # windows license manager service
    "NahimicService"        # Nahimic service
    # "RemoteRegistry",     # remote registry
)

# stop services
foreach ($serviceName in $services) {
    $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
    if ($null -ne $service) {
        try {
            Write-Host "deshabilitando servicio: $serviceName"
            if (($service.Status -eq 'Running')) {
                Stop-Service -Name $serviceName -Force
            }
            if ($service.StartType -ne 'Disabled') {
                Set-Service -Name $serviceName -StartupType Disabled
            }
        }
        catch {
            Write-Error "Ha ocurrido un error en el servicio $serviceName"
        }
    }
}
Write-Host "servicios Desactivados Exitosamente!"

Write-Host ""