dism.exe /online /enable-feature /featurename:NetFX3 /All

Start-Process -FilePath '\\ocli_data\NextGenRoot\Install\Install\NextGen Setup\nextgen.msi'  -ArgumentList /quiet

Start-Sleep -Seconds 45

Start-Process -filepath "C:\windows\regedit.exe" -argumentlist "/s '\\ocli_data\NextGenRoot\Prod\NextGenODBC.reg' "

Start-Process C:\NextGen\vcp.exe

Start-Sleep -Seconds 330




