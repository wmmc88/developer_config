# Call Shared PS Profile
. (Join-Path -Path $PSScriptRoot -ChildPath ../shared/Microsoft.PowerShell_profile.ps1)

# Chocolatey
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Posh-Git
Import-Module posh-git

# ROS
. C:\dev\ros2_rolling\install\local_setup.ps1