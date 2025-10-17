Get-NetFirewallRule -name "HNS Container Networking*" | measure | select Count

wsl --shutdown

Get-NetFirewallRule -Name "HNS Container Networking - DNS (UDP-In)*" | Remove-NetFirewallRule
Get-NetFirewallRule -Name "HNS Container Networking - ICS DNS (TCP-In)*" | Remove-NetFirewallRule

hnsdiag delete all
Restart-Service -Force hns
