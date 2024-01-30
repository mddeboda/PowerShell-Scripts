#DisableFirewallNotifications_Public
$Notifications = Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\MpsSvc\Parameters | Select-Object -ExpandProperty AllowNotificationsForPublicProfile

If ($Notifications -eq 0) {
Write-Host "Microsoft Defender Firewall notifications are already disabled for Public profile."
} Else {
Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\MpsSvc\Parameters -Name AllowNotificationsForPublicProfile -Value 0
Write-Host "Microsoft Defender Firewall notifications have been disabled for Public profile."
}