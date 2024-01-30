###Disable Javascript Adobe Reader
# Get the registry key for Adobe Reader DC
$registryPath = "HKCU:\Software\Adobe\Acrobat Reader\DC\JSPrefs"

# Set the registry value for JavaScript to 0 (disabled)
Set-ItemProperty -Path $registryPath -Name "bEnableJS" -Value 0