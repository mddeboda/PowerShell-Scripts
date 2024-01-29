# Set the "Start" value in the Windows Registry for the tzautoupdate service to 3
Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\tzautoupdate -Name Start -Value 3

# Start the Windows Time service
Start-Service W32Time

# Restart the Windows Time service
Restart-Service W32Time
