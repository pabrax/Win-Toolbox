
$item = "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\$item"
$wow32Path = "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\$item"
try {
    if (Get-Item -Path $path -ErrorAction SilentlyContinue) {
        Remove-Item -Path $path -Force
    }
    if (Get-Item -Path $wow32Path -ErrorAction SilentlyContinue) {
        Remove-Item -Path $wow32Path -Force
    }        
}
catch {
    Write-Error "Error al Eliminar la carpeta de Objetos 3D"
}
Write-Host "La carpeta Objetos 3D ha sido eliminada Con exito"