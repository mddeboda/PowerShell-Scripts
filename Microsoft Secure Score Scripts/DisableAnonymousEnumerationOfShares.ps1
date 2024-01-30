# Disable Anonymous enumeration of shares
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\LSA" -Name "RestrictAnonymous" -Value 1
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "RestrictNullSessAccess" -Value 0
Restart-Service "LanmanServer"