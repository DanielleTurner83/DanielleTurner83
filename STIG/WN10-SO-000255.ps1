<#
.SYNOPSIS
    This PowerShell script automatically denies elevation requests for standard users .

.NOTES
    Author          : Danielle Turner
    LinkedIn        : linkedin.com/in/danielle-turner7/
    GitHub          : github.com/DanielleTurner83
    Date Created    : 2025-08-13
    Last Modified   : 2025-08-13
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000255 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>


New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorUser" -Type DWord -Value 0
