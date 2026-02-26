# windows-powershell-profile
Personal PowerShell configuration for Windows.

## Setup

Create a symbolic link from this repo to the PowerShell profile path:

```powershell
New-Item -ItemType SymbolicLink -Path $PROFILE -Target "$PWD\Microsoft.PowerShell_profile.ps1" -Force
```

> **Note:** Run PowerShell as Administrator to create symlinks.

To verify:

```powershell
Test-Path $PROFILE  # Should return True
. $PROFILE          # Reload profile
```
