# Auto Git Sync Script for Obsidian Vault
# Runs via Windows Task Scheduler every 10 minutes.
# 1) Commits any new changes
# 2) Pushes any unpushed commits (even if no new changes)

$VaultPath = "D:\valut_obsidian\vault_workspace"
$LogFile = Join-Path $VaultPath "auto_git_sync.log"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Write-Log($msg) {
    $entry = "[$timestamp] $msg"
    Write-Output $entry
    Add-Content -Path $LogFile -Value $entry -Encoding UTF8
}

# Keep log file under 500 lines
if (Test-Path $LogFile) {
    $lines = Get-Content $LogFile
    if ($lines.Count -gt 500) {
        $lines[-200..-1] | Set-Content $LogFile -Encoding UTF8
    }
}

Set-Location $VaultPath

# Step 1: Commit new changes if any
$status = git status --porcelain
if ($status) {
    git add .
    $result = git commit -m "vault backup: $timestamp" 2>&1
    Write-Log "Changes committed. $result"
}
else {
    Write-Log "No new changes."
}

# Step 2: Always push if there are unpushed commits
$unpushed = git rev-list --count origin/main..HEAD 2>$null
if ($unpushed -gt 0) {
    $pushResult = git push origin main 2>&1
    Write-Log "Pushed $unpushed commit(s) to GitHub. $pushResult"
}
else {
    Write-Log "Already in sync with GitHub."
}
