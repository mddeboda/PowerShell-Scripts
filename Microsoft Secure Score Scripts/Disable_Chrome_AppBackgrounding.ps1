#Disable 'Continue running background apps when Google Chrome is closed'

$registryPath = "HKLM:\SOFTWARE\Policies\Google\Chrome"
$registryName = "BackgroundModeEnabled"
$registryValue = 0

New-Item -Path $registryPath -Force | Out-Null
Set-ItemProperty -Path $registryPath -Name $registryName -Type DWord -Value $registryValue
