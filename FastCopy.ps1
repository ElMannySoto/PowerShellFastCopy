#Today's Date
$day = Get-Date -format dd
$month = Get-Date -format MM
$year = Get-Date -format yyyy

$YMD = "$($Year)$($Month)$($Day)"

$ResumeFolder = "C:\Users\sotomanu\Desktop\2018\resume"
$BackupFolderPath = "C:\Users\sotomanu\Desktop\2018\resume\Backup_Manny\$YMD"

If(!(Test-Path $BackupFolderPath))
{
	New-Item -ItemType Directory $BackupFolderPath;
}


$Time = Get-Date
$HH = $Time.Hour | % { $_.ToString("00") }
$MM = $Time.Minute | % { $_.ToString("00") }
$SS = $Time.Second | % { $_.ToString("00") }
$HMS = "$($HH)$($MM)$($SS)"

$TimeStamp = "$($YMD)_$($HMS)"

Copy-Item "$($ResumeFolder)\Manuel Soto_DXC.docx" -Destination "$($BackupFolderPath)\Manuel Soto_DXC_$($TimeStamp).docx"
explorer "$($BackupFolderPath)"
