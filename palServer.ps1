# Define the path to PalServer.exe
$palServerExe = "C:\Program Files (x86)\Steam\steamapps\common\PalServer\PalServer.exe" # Update this path

# Function to check and update the game server
function Update-GameServer {
    Write-Host "Checking for updates..."
    & steamcmd +login anonymous +app_update 2394010 +quit
}

# Function to start the game server
function Start-GameServer {
    Start-Process $palServerExe 
}

# Function to check if the server is running
function Get-ServerRunning {
    $process = Get-Process PalServer -ErrorAction SilentlyContinue
    return $null -ne $process
}

# Function to get current timestamp
function Get-Timestamp {
    return Get-Date -Format "yyyy-MM-dd HH:mm:ss"
}

# Update game server
Update-GameServer

# Start game server
Start-GameServer

# Continuously check if the server is running
while ($true) {
    Start-Sleep -Seconds 10 # Wait for 10 seconds before checking the process

    if (-not (Get-ServerRunning)) {
        Write-Host "$timestamp - PalServer.exe is not running. Starting server..."
        Start-GameServer
    }
}
