# this simple powershell script allows 
# a system administrator to enable or disable
# the "Settings" context Menu from ClassicShell
# james [at] codeforcoffee [dot] org
# Last updated - 3/18/13

# if you (like most people) have not run a Powershell script
# please refer to Get-ExecutionPolicy inside of Powershell.

# define parameters for script
# ie: classicShell -SETTINGS off
#     classicShell -SETTINGS on

Param(
    [Parameter(Mandatory=$True)]
    [string]$settings
)

if (($settings -eq "off") -or ($settings -eq "OFF")) 
{
    Set-ItemProperty "HKCU:\Software\IvoSoft\ClassicStartMenu\" -Name "EnableSettings" -Value 0 -Type "DWord";   
} 
elseif (($settings -eq "on") -or ($settings -eq "ON")) 
{
    Set-ItemProperty "HKCU:\Software\IvoSoft\ClassicStartMenu\" -Name "EnableSettings" -Value 1 -Type "DWord";
}
else 
{
    Echo "Invalid parameter! Try again.";
    break;
}

Echo "ClassicShell Settings are " $settings;