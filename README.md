# Win11_bloatwareUninstaller

<p align="center">
  <img src="images/win11_bloatwareUninstaller_example.png" />
</p>

## Description
Powershell tool for removing Windows 11 bloatware

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

## Known Issues

#### Microsoft Edge:
&nbsp;&nbsp;&nbsp; <img src="images/uninstallError93.png" /> <br />
&nbsp;&nbsp;&nbsp; *Edge currently has additional protections to prevent uninstall. May include a workaround in the future.*

#### Microsoft Engagement Framework:
&nbsp;&nbsp;&nbsp; <img src="images/engagementFramework.png" /> <br />
&nbsp;&nbsp;&nbsp; *Engagement Framework will report as uninstalled but not actually be removed. Will be investigating.*
