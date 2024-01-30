#Disable Flash on Adobe Reader DC
$registryPath = "HKLM:\SOFTWARE\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\"
$registryName = "bEnableFlash"
$registryValue = 0

New-Item -Path $registryPath -Force | Out-Null
Set-ItemProperty -Path $registryPath -Name $registryName -Type DWord -Value $registryValue
