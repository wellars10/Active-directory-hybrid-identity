<#
.SYNOPSIS
Create test users in Active Directory.

.DESCRIPTION
Creates sample users in on-prem Active Directory to demonstrate
Azure AD Connect synchronization in a lab environment.

NOTE:
Passwords are for lab use only.
#>

Import-Module ActiveDirectory

$users = @(
    @{ Name="Test User1"; Sam="test.user1"; UPN="test.user1@lab.local" },
    @{ Name="Test User2"; Sam="test.user2"; UPN="test.user2@lab.local" }
)

foreach ($user in $users) {
    New-ADUser `
        -Name $user.Name `
        -SamAccountName $user.Sam `
        -UserPrincipalName $user.UPN `
        -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) `
        -Enabled $true
}

Write-Output "Test users created successfully."
