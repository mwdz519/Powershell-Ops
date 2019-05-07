function New-Password 

{

Param ([String] $user)

Set-ADAccountPassword -Identity $user -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "ocli2019" -Force)

Set-ADUser -Identity $user -ChangePasswordAtLogon $true


}