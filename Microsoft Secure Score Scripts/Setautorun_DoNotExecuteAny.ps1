# Author: Mike DeBoda
# Contact: mike@mdeboda.net
# Description: Create registry entry to do not execute any auto run commands
# Set default behavior for 'AutoRun' to 'Enabled: Do not execute any autorun commands'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -name "NoAutorun" -Value 1
