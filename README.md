# Developer Config and Setup

## Ubuntu Setup

1. Install [Powershell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2#installation-via-package-repository)
1. Install Init scripts for respective shells (These will error until you finish all the steps below):
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
1. Install some basic tools
   * `sudo apt install git curl vim`
1. Install [Fira Code Nerd Font](https://github.com/tonsky/FiraCode) for Starship to render properly.
   * `sudo apt install fonts-firacode`
1. Install latest stable [LLVM](https://apt.llvm.org/)
   * See "Automatic installation script" and "Default packages" steps
1. Install [Rust](https://www.rust-lang.org/tools/install)
1. Install [Starship](https://starship.rs/):
   * Install Dependencies: `sudo apt install libssl-dev`
   * Install Starship from rust: `cargo install starship`
   * To update Starship: `cargo update starship`


## Windows Setup

1. Install winget dependencies
   1. `winget import <SOME PATH>\developer_config\windows\winget.json`
      1. NOTE: `<SOME PATH>\developer_config\windows\Microsoft.PowerShell_profile.ps1` needs to be sourced first so that rustup and cargo install to the right place
2. Install Init scripts for respective shells:
   * Powershell 7+:
      1. Open powershell profile (create file if needed):
         * `notepad $PROFILE`
         * `New-Item $PROFILE -Force`
      2. Add the following line to the script :
         * `. '<SOME PATH>\developer_config\windows\Microsoft.PowerShell_profile.ps1'`
   * Bash:
      1. Open .bashrc:
         *`gedit ~/.bashrc`
      2. Add the following line to the script :
         * `source "<SOME PATH>/developer_config/windows/.bashrc"`
3. Sync ssh_config:
    * `New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.ssh\config" -Target "D:\git-repos\github\developer_config\windows\ssh_config" -Force` in an Administrative Prompt
4. Sync Windows Terminal Settings:
   * `New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Target <SOME PATH>/developer_config\windows\windows_terminal_settings.json -Force` in an Administrative Prompt
5. Install posh-git (for git completion in powershell):
   * `PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force`
      * To update: `PowerShellGet\Update-Module posh-git`
6. [Install Chocolatey](https://chocolatey.org/install) for packages not available in winget
7. Install [Fira Code Nerd Font](https://github.com/tonsky/FiraCode) for Starship to render properly.
   * `choco install firacode` in an Administrative Prompt
8. Install act for local github actions:
    * Requires Docker Desktop Installed
    * `choco install act-cli` in an Administrative Prompt
9. Install Rust-based tools
   * To install binary tools, use binstall:
   * `$env:RUSTC_WRAPPER = $null; cargo install cargo-binstall`
     * `cargo-binstall` falls back to `cargo install` automatically
   * To speed up rust compilations, cache results:
     * `cargo binstall sccache`
   * To keep everything up to date, use topgrade:
     * `cargo binstall topgrade`
       * Sync `topgrade` config: wdknqdqojdnqjndqonjwdnqwodjonwq
* `cargo binstall coreutils du-dust bat mprocs ripgrep irust evcxr_jupyter bacon speedtest-rs eza`

1. Install ROS Rolling Ridley:
    * Installing from Source Checkout: https://docs.ros.org/en/rolling/Installation/Windows-Development-Setup.html
    * Maintaining Source Checkout: https://docs.ros.org/en/rolling/Installation/Maintaining-a-Source-Checkout.html

## Updating Packages

* winget: `winget upgrade --all`
* Chocolatey: `choco upgrade all` in an Administrative Prompt

## Tips

* CTRL+SHIFT+click to run as Admin
