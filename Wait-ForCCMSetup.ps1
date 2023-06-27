#  Jon Buhagiar
#  Check for the SCCM Setup and alert when completed
#  6/26/23

$processName = "ccmsetup"

Clear-Host
Write-Host 
Write-Host "Waiting for CCMSetup to complete"

do {
    $process = Get-Process -Name $processName -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 1  # Adjust the delay as needed
    Write-Host -NoNewline "."
}
while ($process)

Write-Host
Write-Host "Process '$processName' has terminated"
Write-Host