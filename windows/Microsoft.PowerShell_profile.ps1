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
$env:Path = "C:\ProgramData\chocolatey\bin;$env:Path" # Force choco curl to be used instead of libcurl_vendor curl. libcurl_vendor has no ssl support(bug?)
function Update-Ros-Rolling {
  Set-Location \dev\ros2_rolling &&
  curl https://raw.githubusercontent.com/ros2/ros2/master/ros2.repos -o ros2.repos &&
  vcs custom --args remote update &&
  vcs import --input ros2.repos src &&
  vcs pull src &&
  colcon build --merge-install &&
  Set-Location -
}
function Export-Ros-Rolling {
  Set-Location \dev\ros2_rolling &&
  vcs export src > my_ros2.repos &&
  Get-Content my_ros2.repos &&
  Set-Location -
}