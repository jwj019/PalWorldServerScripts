# PalWorldServerScripts

## Introduction
These scripts do the following:
- Add Windows firewall rules to open up the necessary ports for the PalWorld server to run
- Install steamcmd to install and run the server
- Automate server updates on startup
- Run automatic backups every 30 minutes

## Requirements
- You are running a Windows OS
- You have Steam installed

## Running the script
1) Save `palServer.ps1` to your PC
2) Make sure the `$palServerPath` and `$defaultSteamCmdPath` point to appropriate paths
3) Right click `palServer.ps1` and select `Run with PowerShell` to install and start the server
