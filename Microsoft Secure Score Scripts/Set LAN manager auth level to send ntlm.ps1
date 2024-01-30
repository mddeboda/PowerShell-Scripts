#Set LAN manager auth level to send ntlmv2 response only refuse LM and NTLM
$LMLevel = Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa' | Select-Object LmCompatibilityLevel
If ($LMLevel -eq 5) {
Write-Host "LAN Manager authentication level is already set to 'Send NTLMv2 response only. Refuse LM & NTLM'."
} Else {
Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\Lsa -Name LmCompatibilityLevel -Value 5
Write-Host "LAN Manager authentication level has been set to 'Send NTLMv2 response only. Refuse LM & NTLM'."
}