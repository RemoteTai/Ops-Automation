<# test elevation #>
Function Test-Elevated {
  $wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
  $prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
  $adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
  $prp.IsInRole($adm)
}

If (Test-Elevated) {
  echo "Not Ready For Work"
} Else {
  echo "Ready For Work."
}

<# add apps #>
Start-Process -FilePath (".exe here") -Wait -WindowStyle Normal
Start-Process -FilePath (".exe here") -Wait -WindowStyle Normal
Start-Process -FilePath (".exe here") -Wait -WindowStyle Normal
Start-Process -FilePath (".exe here") -Wait -WindowStyle Normal
Start-Process -FilePath (".exe here") -Wait -WindowStyle Normal
Start-Process -FilePath (".exe here") -Wait -WindowStyle Normal