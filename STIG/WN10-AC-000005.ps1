<#
.SYNOPSIS
    This PowerShell script conifugres account lockout to 15 minutes or greater.

.NOTES
    Author          : Danielle Turner
    LinkedIn        : linkedin.com/in/danielle-turner7/
    GitHub          : github.com/DanielleTurner83/DanielleTurner83
    Date Created    : 2025-08-13
    Last Modified   : 2025-08-13
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AC-000005).ps1 
#>

# Set Account lockout duration to 15 minutes
net accounts /lockoutduration:15
