# Auto Git Sync Script for Obsidian Vault
# This script automatically commits and pushes changes every time it runs.
# Designed to be triggered by Windows Task Scheduler.

$VaultPath = "D:\valut_obsidian\vault_workspace"

Set-Location $VaultPath

# Check if there are any changes
$status = git status --porcelain

if ($status) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    
    git add .
    git commit -m "vault backup: $timestamp"
    git push origin main
    
    Write-Output "[$timestamp] Changes committed and pushed."
} else {
    Write-Output "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] No changes detected."
}
