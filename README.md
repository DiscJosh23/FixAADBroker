
#This script will first use the Get-ChildItem cmdlet to retrieve a list of all directories in the C:\Users\ folder. #
#Then, it will loop through each directory using ForEach-Object and construct the file path to the Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy file in the AppData\Local\Microsoft folder for that user.#
#If the file exists in that directory, the script will use Rename-Item to rename the file to Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy.old. Note that this will rename the file for all users on the system.#
#This command also includes a self elvation so you can just click on it to run as admin#
