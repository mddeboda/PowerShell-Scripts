#Disable Microsoft Defender Firewall notifications when programs are blocked for Domain profile
Set-ItemProperty -Path "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" -Name "DisableNotifications" -Value 1

#Disable Microsoft Defender Firewall notifications when programs are blocked for Private profile
Set-ItemProperty -Path "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" -Name "DisableNotifications" -Value 1

#Disable Microsoft Defender Firewall notifications when programs are blocked for Public profile
Set-ItemProperty -Path "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" -Name "DisableNotifications" -Value 1
