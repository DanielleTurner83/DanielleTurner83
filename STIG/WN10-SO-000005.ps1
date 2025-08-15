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

# Find the built-in Administrator account using its well-known SID (-500)
$AdminAccount = Get-LocalUser | Where-Object { $_.SID -like '*-500' }

# Disable the account if it is enabled
If ($AdminAccount.Enabled -eq $true) {
    Disable-LocalUser -Name $AdminAccount.Name
    Write-Host "The Administrator account has been disabled for STIG compliance."
} else {
    Write-Host "The Administrator account is already disabled."
}

# Verify the status
Get-LocalUser | Where-Object { $_.SID -like '*-500' }
