# Call Shared PS Profile
. (Join-Path -Path $PSScriptRoot -ChildPath ../shared/Microsoft.PowerShell_profile.ps1)

# Chocolatey
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Posh-Git (for git tab-completion)
Import-Module posh-git

# Tools Root
$env:TOOLS_ROOT = "D:\.tools"

# Rustup home
$env:RUSTUP_HOME = "$env:TOOLS_ROOT\.rustup"

# cargo cache
$env:CARGO_HOME = "$env:TOOLS_ROOT\.cargo"

# sccache for rust
$env:RUSTC_WRAPPER = "sccache"
$env:SCCACHE_DIR = "$env:TOOLS_ROOT\.sccache"
$env:SCCACHE_CACHE_SIZE="150G"
