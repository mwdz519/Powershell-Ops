$usernames = get-aduser -filter *
$password = 'ocli2019'
$domain = $env:USERDOMAIN

foreach ($username in $usernames){


 Add-Type -AssemblyName System.DirectoryServices.AccountManagement
 

 
$ct = [System.DirectoryServices.AccountManagement.ContextType]::Domain
$pc = New-Object System.DirectoryServices.AccountManagement.PrincipalContext $ct,$Domain
$result = $pc.ValidateCredentials($username, $password)


    if($result -eq $true)

    {

        Write-host $username.SamAccountName

    }

}
