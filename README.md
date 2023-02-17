** YOU CANNOT RUN THIS SCRIPT WHILE THE USER HAVING THE ISSUE IS LOGGED IN. THE FILE WILL BE LOCKED. YOU NEED TO BE LOGGED IN AS A DIFFERENT USER FOR THIS TO WORK**


We have had multiple clients over the last two weeks submit and continue to submit tickets regarding this issue.

The issue has also effected my machine and another coworkers.

Using office 365/2019. Exchange Online. All a sudden it says "needs password" in Outlook. Sometimes the login prompt appears, you enter a password and complete your MFA challenge and then it just keeps popping up. most of the time the login window is blank. Looking in Azure AD logs produces "Interrupted Status" errors with "

This has been the fix that has worked every time so far. 

#This script will first use the Get-ChildItem cmdlet to retrieve a list of all directories in the C:\Users\ folder. #

#Then, it will loop through each directory using ForEach-Object and construct the file path to the Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy file in the AppData\Local\Microsoft folder for that user.#

#If the file exists in that directory, the script will use Rename-Item to rename the file to Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy.old. Note that this will rename the file for all users on the system.#

#This command also includes a self elvation so you can just click on it to run as admin#
