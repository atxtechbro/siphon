$toolsDir   = Get-ToolsDirectory
Write-Host "chocolateyInstall.ps1: toolsDir is: $($toolsDir)"
$packageDir = Split-Path -parent $MyInvocation.MyCommand.Definition
Write-Host "chocolateyInstall.ps1: packageDir is: $($packageDir)"

# 2. Clone the repository (adjust URL and branch as needed)
Write-Host "chocolateyInstall.ps1: Starting Git clone..."
git clone --depth 1 https://github.com/atxtechbro/siphon.git -b main $packageDir
Write-Host "chocolateyInstall.ps1: Git clone completed."

# 4. Install Python dependencies (if any) - Check for requirements.txt
$requirementsFile = Join-Path $packageDir requirements.txt
Write-Host "chocolateyInstall.ps1: Checking for requirements.txt at: $($requirementsFile)"
if (Test-Path $requirementsFile) {
    Write-Host "chocolateyInstall.ps1: requirements.txt found. Installing Python dependencies..."
    & python -m pip install -r $requirementsFile --target $packageDir\.venv
    $env:Path = "$packageDir\.venv\Scripts;$env:Path"
    Write-Host "chocolateyInstall.ps1: Python dependencies installed and PATH updated."
} else {
    Write-Host "chocolateyInstall.ps1: requirements.txt not found. Skipping Python dependency installation."
}

# 5. No build step needed as siphon.py is already in the root
Write-Host "chocolateyInstall.ps1: Skipping build step."

# 6. Copy siphon.exe (NOT siphon.py) to the tools directory - CORRECTED THIS LINE
$siphonExe = Join-Path $packageDir "choco\siphon.exe" # Changed to siphon.exe and choco dir
Write-Host "chocolateyInstall.ps1: Copying siphon.exe from: $($siphonExe) to destination: $($toolsDir)"
Copy-Item $siphonExe -Destination $toolsDir -Force
Write-Host "chocolateyInstall.ps1: siphon.exe copied."


# 7. Create Verification File
Write-Host "chocolateyInstall.ps1: Creating VERIFICATION.txt for siphon.exe" # Changed to siphon.exe
Get-FileHash "$toolsDir\siphon.exe" -Algorithm SHA256 | Select-Object -ExpandProperty Hash | Out-File "$toolsDir\VERIFICATION.txt" -Encoding utf8
Write-Host "chocolateyInstall.ps1: VERIFICATION.txt created."

Write-Host "chocolateyInstall.ps1: Siphon installation script completed successfully!" # More descriptive message