#Set IPv6 source routing to highest protection
$IPv6SourceRouting = Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters | Select-Object -ExpandProperty IPv6SourceRoutingProtectionLevel

If ($IPv6SourceRouting -eq 2) {
Write-Host "IPv6 source routing is already set to the highest protection level."
} Else {
Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters -Name IPv6SourceRoutingProtectionLevel -Value 2
Write-Host "IPv6 source routing has been set to the highest protection level."
}