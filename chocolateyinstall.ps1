$toolsDir   = Get-ToolsDirectory
$packageDir = Split-Path -parent $MyInvocation.MyCommand.Definition

# 1. Check for Git
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is required to build this package. Please ensure it is installed."
    exit 1  # Exit with a non-zero code to indicate failure
}

# 2. Clone the repository (adjust URL and branch as needed)
git clone --depth 1 https://github.com/atxtechbro/siphon.git -b main $packageDir\siphon

# 3. Check for Python
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Error "Python is required to build this package. Please ensure it is installed."
    exit 1
}

# 4. Install Python dependencies (if any) - Check for requirements.txt
$requirementsFile = Join-Path $packageDir\siphon requirements.txt
if (Test-Path $requirementsFile) {
    & python -m pip install -r $requirementsFile --target $packageDir\siphon\.venv
    # Add .venv to the path
    $env:Path = "$packageDir\siphon\.venv\Scripts;$env:Path"
}


# 5. Build siphon.exe (replace with your actual build commands)
cd $packageDir\siphon
python setup.py build

# 6. Copy the built executable to the tools directory
$siphonExe = Join-Path $packageDir\siphon\dist\siphon.exe
if (Test-Path $siphonExe) {
    Copy-Item $siphonExe -Destination $toolsDir -Force
} else {
    Write-Error "siphon.exe not found after build. Check the build process."
    exit 1
}

# 7. Create Verification File
Get-FileHash "$toolsDir\siphon.exe" -Algorithm SHA256 | Select-Object -ExpandProperty Hash | Out-File "$toolsDir\VERIFICATION.txt" -Encoding utf8


Write-Host "Siphon installed successfully!"