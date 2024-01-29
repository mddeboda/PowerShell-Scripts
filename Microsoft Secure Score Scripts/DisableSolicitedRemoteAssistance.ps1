# Author: Mike DeBoda
# Contact: mike@mdeboda.net
# Disable Solcited Remote Assistance
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -name "fAllowToGetHelp" -Value 0