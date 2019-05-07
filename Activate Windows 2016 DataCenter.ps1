$computer = gc env:computername

$key = "3V7NH-3846P-44GW7-P2C74-GXYKV"

$service = get-wmiObject -query "select * from SoftwareLicensingService" -computername $computer

$service.InstallProductKey($key)

$service.RefreshLicenseStatus()