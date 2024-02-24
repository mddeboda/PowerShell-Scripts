# List connection specific DNS suffix
(Get-WmiObject -Class Win32_NetworkAdapterConfiguration | Where {$_.IPEnabled}).DNSDomainSuffixSearchOrder
