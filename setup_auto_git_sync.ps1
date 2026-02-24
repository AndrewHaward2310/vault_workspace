# Setup script for Auto Git Sync - Run this as Administrator!
# This creates a Windows Task Scheduler task that runs auto_git_sync.ps1 every 10 minutes.

$ScriptPath = "D:\valut_obsidian\vault_workspace\auto_git_sync.ps1"

# Check if running as admin
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "ERROR: This script must be run as Administrator!" -ForegroundColor Red
    Write-Host "Right-click PowerShell -> 'Run as Administrator' and try again." -ForegroundColor Yellow
    pause
    exit 1
}

# Remove existing task if any
schtasks /delete /tn "AutoGitSync" /f 2>$null

# Create the scheduled task
$Action = New-ScheduledTaskAction `
    -Execute "powershell.exe" `
    -Argument "-ExecutionPolicy Bypass -WindowStyle Hidden -File `"$ScriptPath`""

$Trigger = New-ScheduledTaskTrigger `
    -Once `
    -At (Get-Date) `
    -RepetitionInterval (New-TimeSpan -Minutes 10) `
    -RepetitionDuration (New-TimeSpan -Days 9999)

$Settings = New-ScheduledTaskSettingsSet `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -StartWhenAvailable `
    -ExecutionTimeLimit (New-TimeSpan -Minutes 5)

$Principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME -RunLevel Highest -LogonType Interactive

Register-ScheduledTask `
    -TaskName "AutoGitSync" `
    -Action $Action `
    -Trigger $Trigger `
    -Settings $Settings `
    -Principal $Principal `
    -Description "Auto commit and push Obsidian vault to GitHub every 10 minutes" `
    -Force

Write-Host ""
Write-Host "SUCCESS! Task 'AutoGitSync' created." -ForegroundColor Green
Write-Host "- Runs every 10 minutes" -ForegroundColor Cyan
Write-Host "- Script: $ScriptPath" -ForegroundColor Cyan
Write-Host ""

# Verify
schtasks /query /tn "AutoGitSync" /fo LIST | Select-String "Task Name|Status|Next Run"

Write-Host ""
Write-Host "Running the task now to test..." -ForegroundColor Yellow
Start-ScheduledTask -TaskName "AutoGitSync"
Start-Sleep -Seconds 5

# Show log
$LogPath = "D:\valut_obsidian\vault_workspace\auto_git_sync.log"
if (Test-Path $LogPath) {
    Write-Host ""
    Write-Host "Latest log output:" -ForegroundColor Cyan
    Get-Content $LogPath -Tail 5
}

pause
