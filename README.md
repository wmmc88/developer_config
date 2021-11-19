# Developer Config and Setup

## Ubuntu Setup

1. Install [Powershell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2#installation-via-package-repository)
2. Install Init scripts for respective shells (These will error until you finish all the steps below):
   * Bash:
      1. Open .bashrc:
         * `gedit ~/.bashrc`
      2. Add the following line to the script :
         * `source "<SOME PATH>/developer_config/linux/.bashrc"`
   * Powershell 7+:
      1. Open powershell profile (create file if needed):
         * `New-Item -ItemType File -Path $PROFILE -Force`
         * `vim $PROFILE`
      2. Add the following line to the script :
         * `. '<SOME PATH>/developer_config/linux/Microsoft.PowerShell_profile.ps1'`
3. Install some basic tools
   * `sudo apt install git curl vim`
4. Install [Fira Code Nerd Font](https://github.com/tonsky/FiraCode) for Starship to render properly.
   * `sudo apt install fonts-firacode`
5. Install latest stable [LLVM](https://apt.llvm.org/)
   * See "Automatic installation script" and "Default packages" steps
6. Install [Rust](https://www.rust-lang.org/tools/install)
7. Install [Starship](https://starship.rs/):
   * Install Dependencies: `sudo apt install libssl-dev`
   * Install Starship from rust: `cargo install starship`
   * To update Starship: `cargo update starship`


## Windows Setup

1. Install [winget](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#install-powershell-via-the-windows-package-manager), [Powershell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#install-powershell-via-the-windows-package-manager), [Windows Terminal Preview](https://www.microsoft.com/store/productId/9N8G5RFZ9XK3)
2. Install Init scripts for respective shells:
   * Powershell 7+:
      1. Open powershell profile (create file if needed):
         * `notepad $PROFILE`
      2. Add the following line to the script :
         * `. '<SOME PATH>\developer_config\windows\Microsoft.PowerShell_profile.ps1'`
3. [Install Chocolatey](https://chocolatey.org/install) for packages not available in winget
4. Install Windows Powertoys:
   * `winget install powertoys`
5. Install git:
   * `winget install git`
6. Install posh-git:
   * `PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force`
      * To update: `PowerShellGet\Update-Module posh-git`
7. Install [Fira Code Nerd Font](https://github.com/tonsky/FiraCode) for Starship to render properly.
   * `choco install firacode` in an Administrative Prompt
8.  Install [Starship](https://starship.rs/):
   * `choco install starship` in an Administrative Prompt
   * There should be no need to add the init script since it should be called in the terminal-specific scripts in [shared](./shared)
     * Init script instructions available [here](https://starship.rs/guide/#%F0%9F%9A%80-installation)
9.  Install act for local github actions:
   * Requires Docker Desktop Installed
   * `choco install act-cli` in an Administrative Prompt
10. Install ROS:
    * Most stable way right now is to use [prebuilt binaries](https://docs.ros.org/en/foxy/Installation/Windows-Install-Binary.html)
      * `choco install python3 --params "/InstallDir:C:\python38"`: ros2 doc is bugged?
      * Need to add QT_QPA_PLATFORM_PLUGIN_PATH env variable with value of C:\dev\ros2_foxy\bin\platforms

## Updating Packages

* winget: `winget upgrade --all`
* Chocolatey: `choco upgrade all` in an Administrative Prompt

## Tips

* CTRL+SHIFT+click to run as Admin
