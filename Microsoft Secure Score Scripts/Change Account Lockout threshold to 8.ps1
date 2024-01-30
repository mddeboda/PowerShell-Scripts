#Change Account Lockout  threshold to 8
$threshold = 8
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$registryName = "LockoutThreshold"

Set-ItemProperty -Path $registryPath -Name $registryName -Value $threshold