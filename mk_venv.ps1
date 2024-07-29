# PowerShell script equivalent to the provided bash script

# Stop the script on any error
$ErrorActionPreference = "Stop"

# Create a Python virtual environment
python -m venv venv

# Activate the virtual environment
& .\venv\Scripts\Activate.ps1

# Install packages from the requirements file
pip install -r .\fuzzer\pkgs.txt

# Note: To deactivate the virtual environment, use 'deactivate'
