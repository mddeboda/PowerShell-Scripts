# Disable Autoplay for non-volume devices
$Autoplay = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer | Select-Object -ExpandProperty NoAutoplayfornonVolume

If ($Autoplay -eq 1) {
Write-Host "Autoplay is already disabled for non-volume devices."
} Else {
Set-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoAutoplayfornonVolume -Value 1
Write-Host "Autoplay has been disabled for non-volume devices."
}