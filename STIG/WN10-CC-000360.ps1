<#
.SYNOPSIS
    This PowerShell script forces Windows Remote Mangement (WinRM) client to not use Digest authentication.

.NOTES
    Author          : Danielle Turner
    LinkedIn        : linkedin.com/in/danielle-turner7/
    GitHub          : github.com/DanielleTurner83/DanielleTurner83
    Date Created    : 2025-08-14
    Last Modified   : 2025-08-14
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000360

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000360).ps1 
#>

# Must run as adminstrator

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client" -Force | Out-Null; Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client" -Name "AllowDigest" -Value 0 -Type DWord
