# Sample command line
# First command is path to PrjPcb
# Second is the output path for the job file
# Third is the path and name for the release file
# .\hwprocess.ps1 C:\Users\anujd\balena\balenaFin-RPi-HAT\source\SideBoard\SideBoard.PrjPcb C:\Users\anujd\balena\balenaFin-RPi-HAT\output\Sideboard C:\Users\anujd\balena\AltiumAutomation\Releases\SideBoard_release.zip/

Write-Output 'Beginning hw process by running predefined jobs...'

## Split arguments into parameters

$projectname=$args[0]
$outputname=$args[1] 
$releasename=$args[2]

$Command = "C:\Program Files\Altium\AD19\X2.EXE"

# $Parms = '-RScriptingSystem:RunScript(ProjectName="C:\Users\anujd\balena\hardware-process\source\Script_Project1.PrjScr"|ProcName="GenerateOutputFiles>GenerateOutputFiles('+$projectname+')")'

$Parms = '-RScriptingSystem:RunScript(ProjectName="C:\Users\anujd\balena\hardware-process\source\Script_Project1.PrjScr"|ProcName="GenerateOutputFiles")'
$Prms = $Parms.Split(" ")
Start-Process "$Command" $Prms -Wait
Write-Output 'Done!'

## Begin zipping of output files from Altium Job
Write-Output 'Zipping and preparing file for upload now ...'
$compress = @{
  Path = $outputname
  CompressionLevel = "Fastest"
  DestinationPath = $releasename
}
Compress-Archive @compress -Force
Write-Output 'Done!'
