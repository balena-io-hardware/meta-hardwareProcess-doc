# Altium Automation

This document explains how to use PowerShell, and Delphiscript,  to automate running of JobFiles created in Altium.

## Sample command line

- First command is path to PrjPcb
- Second is the output path for the job file
- Third is the path and name for the release file

For example - 
```.\hwprocess.ps1 C:\Users\anujd\balena\balenaFin-RPi-HAT\source\SideBoard\SideBoard.PrjPcb C:\Users\anujd\balena\balenaFin-RPi-HAT\output\Sideboard C:\Users\anujd\balena\AltiumAutomation\Releases\SideBoard_release.zip/```

Ideally we can remove the 2nd parameter from the above, by parsing the JobFile to find out what `OutputBasePath3` is set to.

## Scripting Project

We have a Script Project under Altium which can (ideally) be used generically with all our projects. This project can be invoked from the Windows command line by passing it as a parameter to the Altium.exe file.
