# Install pyenv-win
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"
& "./install-pyenv-win.ps1"

# Set PYENV_ROOT environment variable
$env:PYENV_ROOT = "$HOME\.pyenv\pyenv-win"

# Update PATH environment variable (this will only update the PATH for the current PowerShell session)
$env:PATH = "$env:PYENV_ROOT\bin;" + $env:PATH

# Install Python 3.12.1 using pyenv
pyenv install 3.12.1

# Set global Python version to 3.9.9
pyenv global 3.12.1


# To permanently update the PATH, you need to restart PowerShell or log off and back on.
# Note: Run PowerShell as Administrator
# The changes made by this script will only affect the user environment, not the system-wide environment. 
# If you wish to modify the system-wide environment variables, 
# replace [System.EnvironmentVariableTarget]::User with [System.EnvironmentVariableTarget]::Machine.

# Set PYENV_ROOT environment variable permanently
# [System.Environment]::SetEnvironmentVariable('PYENV_ROOT', "$HOME\.pyenv\pyenv-win", [System.EnvironmentVariableTarget]::User)

# Add PYENV_ROOT to the PATH environment variable permanently
# $path = [System.Environment]::GetEnvironmentVariable('PATH', [System.EnvironmentVariableTarget]::User)
# $newPath = "$HOME\.pyenv\pyenv-win\bin;" + $path
# [System.Environment]::SetEnvironmentVariable('PATH', $newPath, [System.EnvironmentVariableTarget]::User)

# After running these commands, restart PowerShell or log off and back on for the changes to apply.
