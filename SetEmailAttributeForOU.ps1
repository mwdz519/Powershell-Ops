$Users = Get-ADUser -SearchBase "OU=129,OU=OCLI Users,DC=ocli,DC=com"  -SearchScope Subtree -Filter *

foreach ($user in $Users)

{

$name = $user.SamAccountName
 Set-ADUser -Identity $name -EmailAddress "$name@ocli.com"

 }