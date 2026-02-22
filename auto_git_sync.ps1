# Auto Git Sync Script for Obsidian Vault
# Runs via Windows Task Scheduler every 10 minutes.
# 1) Commits any new changes
# 2) Pushes any unpushed commits (even if no new changes)

$VaultPath = "D:\valut_obsidian\vault_workspace"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Set-Location $VaultPath

# Step 1: Commit new changes if any
$status = git status --porcelain
if ($status) {
    git add .
    git commit -m "vault backup: $timestamp"
    Write-Output "[$timestamp] Changes committed."
}
else {
    Write-Output "[$timestamp] No new changes."
}

# Step 2: Always push if there are unpushed commits
$unpushed = git rev-list --count origin/main..HEAD 2>$null
if ($unpushed -gt 0) {
    git push origin main
    Write-Output "[$timestamp] Pushed $unpushed commit(s) to GitHub."
}
else {
    Write-Output "[$timestamp] Already in sync with GitHub."
}
