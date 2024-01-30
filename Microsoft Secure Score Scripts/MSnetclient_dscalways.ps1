#Enable 'Microsoft network client: Digitally sign communications (always)'
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters"
$registryName = "RequireSecuritySignature"
$registryValue = 1

New-Item -Path $registryPath -Force | Out-Null
Set-ItemProperty -Path $registryPath -Name $registryName -Type DWord -Value $registryValue