$toolsDir   = Get-ToolsDirectory
$packageDir = Split-Path -parent $MyInvocation.MyCommand.Definition

# 1. Check for Git
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is required to build this package. Please ensure it is installed."
    exit 1 
}

# 2. Clone the repository (adjust URL and branch as needed)
git clone --depth 1 https://github.com/atxtechbro/siphon.git -b main $packageDir

# 3. Check for Python
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Error "Python is required to build this package. Please ensure it is installed."
    exit 1
}

# 4. Install Python dependencies (if any) - Check for requirements.txt
$requirementsFile = Join-Path $packageDir requirements.txt
if (Test-Path $requirementsFile) {
    & python -m pip install -r $requirementsFile --target $packageDir\.venv
    $env:Path = "$packageDir\.venv\Scripts;$env:Path"
}

# 5. No build step needed as siphon.py is already in the root

# 6. Copy siphon.py to the tools directory
$siphonPy = Join-Path $packageDir siphon.py 
Copy-Item $siphonPy -Destination $toolsDir -Force

# 7. Create Verification File
Get-FileHash "$toolsDir\siphon.py" -Algorithm SHA256 | Select-Object -ExpandProperty Hash | Out-File "$toolsDir\VERIFICATION.txt" -Encoding utf8

Write-Host "Siphon installed successfully!"