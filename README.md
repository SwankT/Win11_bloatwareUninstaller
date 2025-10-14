# Win11_bloatwareUninstaller

## Description
Powershell tool for removing Windows 11 bloatware
[](images/win11_bloatwareUninstaller_example.png)

## Instructions
1. Not Digitally Signed:

    * Open terminal with admin autorization. (Right-click and Run as administrator)
    * Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine`

> [!NOTE]
> You can learn about Windows PowerShell Policies here: <br />
> https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy

 2. Usage (a or b):

    * a. Run Script as default
    * b. Edit script to uninstall only the programs you want to remove

## Schedule & Automate
> *Coming Soon!*

## Active directory Setup (System Admin)
> *Coming Soon!*

## Special Cases

  * Microsoft Edge: <br />
    [](images/uninstallError93.png) <br />
    "Unistall failed with exit code: 93" Currently Microsoft Edge has additional protects to prevent uninstall.
