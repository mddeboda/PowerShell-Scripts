# Author: Mike DeBoda
# Contact: mike@mdeboda.net
# Description: Adds a registry entry to enable Local Security Authority(LSA) Protection to protect important security processes

# Enable LSA Protection
New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\' -name "RunAsPPL" -Value 1
