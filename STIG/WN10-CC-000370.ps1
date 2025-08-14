<#
.SYNOPSIS
    This PowerShell script diables the convenience PIN for Windows 10.

.NOTES
    Author          : Danielle Turner
    LinkedIn        : linkedin.com/in/danielle-turner7/
    GitHub          : github.com/DanielleTurner83
    Date Created    : 2025-08-14
    Last Modified   : 2025-08-14
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000370 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000370).ps1 
#>

# Create the key if it doesn't exist and set value to 0 <Must run as administrator>

New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "AllowDomainPINLogon" -Value 0 -Type DWord
