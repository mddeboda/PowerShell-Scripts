$Elevation = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System | Select-Object -ExpandProperty PromptOnSecureDesktop

If ($Elevation -eq 1) {
Write-Host "The 'Require domain users to elevate when setting a network's location' setting is already enabled."
} Else {
Set-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name PromptOnSecureDesktop -Value 1
Write-Host "The 'Require domain users to elevate when setting a network's location' setting has been enabled."
}