
# Comenta las aplicaciones que no desees instalar, puedes agregar nuevos programas a la lista

$apps = @(

    ## development
    "Microsoft.PowerShell"
    "Microsoft.WindowsTerminal"
    "Python.Python.3.12"
    "OpenJS.NodeJS.LTS"
    "Oracle.JDK.17"
    "Microsoft.DotNet.SDK.7"
    "Neovim.Neovim"
    # "Git.Git"
    # "Microsoft.SQLServerManagementStudio"

    ## Browsers
    "Brave.Brave"
    # "Mozilla.Firefox"
    # "Microsoft.Edge"
    # "Google.Chrome"
    # "Opera.OperaGX"
    # "Opera.Opera"


    ## gaming
    # "Discord.Discord"
    # "Valve.Steam"
    "Microsoft.MicrosoftMahjong"
    
    ## design
    # "BlenderFoundation.Blender"

    # Common
    "7zip.7zip"
    "Spotify.Spotify"
    "Notion.Notion"
    "JackieLiu.NotepadsApp"
    "AppleInc.iTunes_nzyj5cx40ttqa"
    "WhatsApp.WhatsApp"
    

    ## Security
    # "Malwarebytes.Malwarebytes"
    
)

foreach ($item in $apps) {
    winget.exe install --id $item -s winget
}
