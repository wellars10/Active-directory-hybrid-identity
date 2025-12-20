# Import the ActiveDirectory module
Import-Module ActiveDirectory

# Define users for different OUs
$userData = @(
    @{GivenName="John"; Surname="Doe"; SamAccountName="j.doe"; Department="IT"; Title="Systems Admin"; Path="OU=IT,DC=company,DC=local"},
    @{GivenName="Jane"; Surname="Smith"; SamAccountName="j.smith"; Department="HR"; Title="HR Manager"; Path="OU=HR,DC=company,DC=local"}
)

foreach ($user in $userData) {
    New-ADUser `
        -Name "$($user.GivenName) $($user.Surname)" `
        -GivenName $user.GivenName `
        -Surname $user.Surname `
        -SamAccountName $user.SamAccountName `
        -Department $user.Department `
        -Title $user.Title `
        -UserPrincipalName "$($user.SamAccountName)@company.local" `
        -Path $user.Path `
        -AccountPassword (ConvertTo-SecureString "TempP@ssw0rd!" -AsPlainText -Force) `
        -Enabled $true
    Write-Host "Created user: $($user.SamAccountName)" -ForegroundColor Green
}
