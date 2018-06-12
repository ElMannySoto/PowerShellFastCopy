$BackupFolder = ".PRECLEANUP"

$SourceFolder = "C:\Users\sotomanu\Desktop\2018\resume"
$DestinationFolder = "$SourceFolder$($BackupFolder)"

If(!(Test-Path $DestinationFolder))
{
	New-Item -ItemType Directory $DestinationFolder;
}

robocopy $SourceFolder $DestinationFolder /MIR

explorer "$($DestinationFolder)"
