# PowerShell Scripts for Windows Automation

Win-ToolBox Es un Conjunto de Scripts de configuracion de windows 10 y 11 pensados para  Facilitar y automatizar la configuracion del sistema operativo windows.

Estos scripts Abordan desde configuraciones del equipo, asi como retoques visuales, o configuraciones personalizadas.

Este repositorio Fue creado con el proposito de aprender, conocer y expandir mis conocimientos acerca del funcionamiento de Windows y powershell.
 
> **para nada se recomienda su uso en un entorno profesional**.

### Requisitos

Asegúrate de cumplir con los siguientes requisitos antes de ejecutar los scripts:

- PowerShell 5.1 o superior.
- Permisos de administrador para ejecutar algunos scripts que requieren cambios en la configuración del sistema.

### configuracion

Abre Powershell como administrador

Activa los permisos de ejecucion

```pwsh
Set-ExecutionPolicy Unrestricted
```

Ejecuta el archivo desde powershell


### Uso

Descarga o Clona Este repositorio en tu maquina Local:

```bash
git clone https://github.com/pabrax/Win-ToolBox
cd Win-ToolBox
```

ejemplo de uso:

dentro de `Win-ToolBox`
```pwsh
.\Custom\Install-Applications.ps1
.\scripts\Remove-Bloatware.ps1
.\Tools\Disable-3Dfolder.ps1
```

## Contribuciones
Si tienes ideas para mejorar o implementar nuevos Scripts, ¡no dudes en contribuir!

## notas

- Recuerda, Si no estas Seguro del funcionamiento de alguno de estos scripts, no Hagas uso de ellos en tu maquina local o en Produccion.

- Se iran añadiendo nuevas caracteristicas y scripts a lo largo del tiempo.

- Recuerda que puedes Contribuir y agregar o mejorar los scripts existentes