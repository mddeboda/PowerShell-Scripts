#Set UAC to automatically DenyElevationRequests
$UAC = Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System' | Select-Object -ExpandProperty EnableLUA

If ($UAC -eq 0) {
Write-Host "UAC is already set to deny elevation requests."
} Else {
Set-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0
Write-Host "UAC has been set to deny elevation requests."
}