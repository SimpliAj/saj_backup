@echo off
:: Define the backup path and the source folder here
set backupPath=C:\Users\%username%\Documents\Backups\Scripts
set sourceFolder=C:\Users\%username%\Documents\FiveM\Framework\resources

:: Get the current date in the format YYYY-MM-DD
set mydate=%date:~-4%-%date:~3,2%-%date:~0,2%

:: Construct the full path for the backup file
set backupFile=%backupPath%\Framework-Backup_%mydate%.rar

:: Run the WinRAR command with the defined paths
"C:\Program Files\WinRAR\Rar.exe" a -r -m5 "%backupFile%" "%sourceFolder%"

:: Notify the user that the backup is complete
echo Backup complete: %backupFile%

:: Pause the script to allow the user to see the result
pause
