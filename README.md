# Win11_bloatwareUninstaller

<p align="center">
  <img src="images/win11_bloatwareUninstaller_example.png" />
</p>

## Description
Simple Powershell tool for removing Windows 11 bloatware, utilizing winget.

## Instructions
1. Not Digitally Signed:

    * Open terminal with admin autorization. (Right-click & Run as administrator)
    * Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine`

> [!NOTE]
> Unrestricted execution is not recommened for production environments. You can learn about Windows PowerShell Policies here: <br />
> https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy

 2. Usage (a or b):

    * a. Run Script as is (default)
      * Right-click & Run with Powershell

    * b. Editing script to uninstall only certain programs
      * Add/Remove program Id's from list `$bloatArray` as desired. New Id's can be found using `winget list`
      * Save changes & run script

## Known Issues

#### Microsoft Edge:
> <img src="images/uninstallError93.png" /> <br />
> *Edge currently has additional protections to prevent uninstall. May include workarounds in the future.*

#### Microsoft Engagement Framework:
> <img src="images/engagementFramework.png" /> <br />
> *Engagement Framework will report as uninstalled but not actually be removed. Planning to investigate.*
