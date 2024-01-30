#Disable PromptOnSecureDesktop when using quick assist
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$registryName = "PromptOnSecureDesktop"
$registryValue = 0

New-Item -Path $registryPath -Force | Out-Null
Set-ItemProperty -Path $registryPath -Name $registryName -Type DWord -Value $registryValue