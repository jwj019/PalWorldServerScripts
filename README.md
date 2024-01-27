# PalWorldServerScripts

## Requirements
- You are running a Windows OS
- You have Steam installed
- You opened the appropriate ports in the Windows firewall as:
```
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Inbound -LocalPort 27015,27016,25575 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Outbound -LocalPort 27015,27016,25575 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Outbound -LocalPort 8211,27015,27016,25575 -Protocol UDP -Action Allow
New-NetFirewallRule -DisplayName "Palworld Server" -Direction Inbound -LocalPort 8211,27015,27016,25575 -Protocol UDP -Action Allow
```

## Running the script

1) Save `palServer.ps1` to your PC
2) Make sure the `$palServerPath` and `$defaultSteamCmdPath` point to appropriate paths
3) Right click `palServer.ps1` and select `Run with PowerShell`
