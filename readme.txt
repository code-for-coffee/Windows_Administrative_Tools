classicshellsettings.ps1
james [at] codeforcoffee [dot] org
Last updated - 3/18/13

ABOUT:

This simple powershell script allows a system administrator to enable or disable the "Settings" context Menu from Classic Shell. Please note that Classic Shell (http://www.classicshell.net/) must be installed for this script to run. This script has been tested in Powershell 3.0.

HOW TO RUN:

To run via Powershell:

./classicshellsettings.ps1 off/on
ie: ./classicshellsettings.ps1 OFF

FAQ:

"Help! I cannot run this script!"

If you are receiving an error such as "classicshellsettings.ps1 cannot be loaded because scripts are not enabled on this system" you must enabled scripts. To view your current ability to run Powershell scripts please run "Get-ExecutionPolicy". For a quick way to run this script (by enabling scripts and then disabling) you could run "Set-ExecutionPolicy Remotesigned" followed by "Set-ExecutionPolicy Restricted".

"I am told I cannot find path because it does not exist. Help!"

This is due to the fact that Classic Shell has not been installed correctly (or at all) and the registry defaults do not exist on this computer. To rectify this problem you may run the following line in Powershell to create the correct path: "Md "HKCU:\Software\IvoSoft\ClassicStartMenu\"


