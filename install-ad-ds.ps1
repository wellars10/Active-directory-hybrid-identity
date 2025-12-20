<#
.SYNOPSIS
Install Active Directory Domain Services.

.DESCRIPTION
Installs the AD DS role on a Windows Server VM for a hybrid identity lab.
Domain promotion is done manually to keep the lab simple and controlled.

NOTE:
This script is for learning and demonstration purposes only.
#>

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Write-Output "AD DS role installed. Please proceed with domain promotion manually."
