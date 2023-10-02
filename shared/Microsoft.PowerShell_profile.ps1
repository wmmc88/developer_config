# Starship
$ENV:STARSHIP_CONFIG = Join-Path -Path $PSScriptRoot -ChildPath starship_config.toml
Invoke-Expression (&starship init powershell)

# Bash-like tab complete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
