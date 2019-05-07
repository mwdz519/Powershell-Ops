Import-Module ActiveDirectory

$User = Read-Host -Prompt 'What is the username to hide from the GAL?'

set-aduser -Identity $User -replace @{msExchhidefromaddresslists= $true }