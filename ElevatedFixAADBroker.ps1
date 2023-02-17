#This script will first use the Get-ChildItem cmdlet to retrieve a list of all directories in the C:\Users\ folder.
#Then, it will loop through each directory using ForEach-Object and construct the file path to the Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy file in the AppData\Local\Microsoft folder for that user.
#If the file exists in that directory, the script will use Rename-Item to rename the file to Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy.old. Note that this will rename the file for all users on the system.
#This command also includes a self elevation so you can just click on it to run as admin.
#Please note that this won't change the folder of the user you are logged in to run the script with as that file will be locked.

# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
 if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
      $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
      Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
      Exit
     }
    }

Get-ChildItem -Path C:\Users\ -Directory | ForEach-Object {
    $filePath = Join-Path $_.FullName "AppData\Local\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy"
    $newFilePath = Join-Path $_.FullName "AppData\Local\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy.old"
    if (Test-Path $filePath) {
        Rename-Item $filePath -NewName $newFilePath
    }
}

pause
