New-NetFirewallRule -DisplayName "Palworld Server" -Direction Inbound -LocalPort 27015,27016,25575 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Outbound -LocalPort 27015,27016,25575 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Outbound -LocalPort 8211,27015,27016,25575 -Protocol UDP -Action Allow
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Inbound -LocalPort 8211,27015,27016,25575 -Protocol UDP -Action Allow
