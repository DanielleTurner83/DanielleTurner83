<#
.SYNOPSIS
    This PowerShell script disables built-in administrator.

.NOTES
    Author          : Danielle Turner
    LinkedIn        : linkedin.com/in/danielle-turner7/
    GitHub          : github.com/DanielleTurner83/DanielleTurner83
    Date Created    : 2025-08-14
    Last Modified   : 2025-08-14
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-SO-000005).ps1 
#>

# Run as Administrator

$admin = Get-LocalUser | Where-Object { $_.SID.Value -match '-500$' }
Disable-LocalUser -Name $admin.Name
