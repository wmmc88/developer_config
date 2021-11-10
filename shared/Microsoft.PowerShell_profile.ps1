# Starship
$ENV:STARSHIP_CONFIG = Join-Path -Path $PSScriptRoot -ChildPath starship_config.toml
Invoke-Expression (&starship init powershell)