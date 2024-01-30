# Description: Enable Controlled Folder Access in audit mode
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access\' -name "EnableControlledFolderAccess" -Value 2
