if (Get-Service "sysmain" -ErrorAction SilentlyContinue)

{

    Set-Service sysmain -StartupType disabled
    Stop-Service SysMain

}

Else

{

    if (Get-Service "superfetch*" -ErrorAction SilentlyContinue)

    {
    
        Set-Service Superfetch -StartupType Disabled
        Stop-Service Superfetch
    
    
    }

}