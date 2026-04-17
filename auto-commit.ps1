cd "C:\Users\seand\Borrow Dat"

# Check if there are changes
$status = git status --porcelain

if ($status) {
    git add .
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    git commit -m "Auto-save at $timestamp"
    git push
    Write-Host "Auto-saved to GitHub at $timestamp"
} else {
    Write-Host "No changes to save"
}
