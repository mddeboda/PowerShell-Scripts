#DisableFirewallNotifications_Private
$FirewallNotifications = Get-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile | Select-Object -ExpandProperty DisableNotifications

If ($FirewallNotifications -eq 1) {
Write-Host "Microsoft Defender Firewall notifications are already disabled for the Private profile."
} Else {
Set-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile -Name DisableNotifications -Value 1
Write-Host "Microsoft Defender Firewall notifications have been disabled for the Private profile."
}