
Write-Host "Removiendo Bloatware..."

# * funciona con winget

# $bloatwareApps = @(
#     "Microsoft.549981C3F5F10_8wekyb3d8bbwe"
#     "Microsoft.BingWeather_8wekyb3d8bbwe"
#     "Microsoft.GetHelp_8wekyb3d8bbwe"
#     "Microsoft.Getstarted_8wekyb3d8bbwe"
#     "Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe"
#     "Microsoft.MSPaint_8wekyb3d8bbwe"
#     "Microsoft.MixedReality.Portal_8wekyb3d8bbwe"
#     "microsoft.windowscommunicationsapps_8wekyb3d8bbwe"
#     "Microsoft.OneDrive"
#     "Microsoft.YourPhone_8wekyb3d8bbwe"
#     "Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe"
#     "Microsoft.WindowsMaps_8wekyb3d8bbwe"
#     "Microsoft.WindowsAlarms_8wekyb3d8bbwe"
#     "Microsoft.Wallet_8wekyb3d8bbwe"
#     "Microsoft.SkypeApp_kzf8qxf38zg5c"
#     "Microsoft.Office.OneNote_8wekyb3d8bbwe"
#     "Microsoft.Microsoft3DViewer_8wekyb3d8bbwe"
# )


# try {
#     foreach ($item in $bloatwareApps) {
#         Write-Host "eliminando $item"
#         winget.exe remove --id $item --force 2>&1 | Out-Null
#     }
# }
# catch {
#     Write-Error "Error al eliminar las aplicaciones no necesarias"
# }

# * funciona con Get-AppxPackage

$bloatwareApps = @(
    "Microsoft.549981C3F5F10"
    "Microsoft.BingWeather"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MSPaint"
    "Microsoft.MixedReality.Portal"
    "microsoft.windowscommunicationsapps"
    "Microsoft.OneDrive"
    "Microsoft.YourPhone"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsAlarms"
    "Microsoft.Wallet"
    "Microsoft.SkypeApp"
    "Microsoft.Office.OneNote"
    "Microsoft.Microsoft3DViewer"
)


foreach ($item in $bloatwareApps) {
    Write-Host "eliminando $item"
    try {
        Get-AppxPackage -Name $item -AllUsers | Remove-AppxPackage -AllUsers
        write-host "$item eliminado correctamente..."
    }
    catch {
        Write-Error "Error al eliminar $item "
        continue
    }
}

Write-Host "Bloatware Eliminado Correctamente"
