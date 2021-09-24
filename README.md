# Developer Config and Setup

# Windows Setup
1. Install [winget](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#install-powershell-via-the-windows-package-manager), [Powershell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#install-powershell-via-the-windows-package-manager), [Windows Terminal Preview](https://www.microsoft.com/store/productId/9N8G5RFZ9XK3)
2. [Install Chocolatey](https://chocolatey.org/install) for packages not available in winget
3. Install Windows Powertoys:
   * `winget install powertoys`
4. Install posh-git:
   * `choco install poshgit`
5. Install [Fira Code Nerd Font](https://github.com/tonsky/FiraCode) for Starship to render properly.
   * `choco install firacode` in an Administrative Prompt
6. Install [Starship](https://starship.rs/):
   * `choco install starship` in an Administrative Prompt
   * There should be no need to add the init script since it should be called in the terminal-specific scripts in [shared](./shared)
     * Init script instructions available [here](https://starship.rs/guide/#%F0%9F%9A%80-installation)
7. Install git:
   * `winget install git`
8. Install Init scripts for respective shells:
    * Powershell 7+:
      1. Open powershell profile (create file if needed):
         * `notepad $PROFILE`
      2. Add the following line to the script :
         * `. '<SOME PATH>\developer_config\windows\Microsoft.PowerShell_profile.ps1'`

## Updating Packages

* winget: `winget upgrade --all`
* Chocolatey: `choco upgrade all` in an Administrative Prompt

## Tips

* CTRL+SHIFT+click to run as Admin
