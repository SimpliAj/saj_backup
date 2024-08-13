@echo off
:: Define the backup path and database name here
set backupPath=C:\Users\Administrator\Documents\Backups\SQL
set databases=syltrp

:: Change directory to MySQL bin folder
cd C:\xampp\mysql\bin

:: Generate the filename with date and time
set backupFile="%backupPath%\backup-%date:~6,4%-%date:~3,2%-%date:~0,2%-H%time:~0,2%-M%time:~3,2%.sql"

:: Run the mysqldump command with the defined values
mysqldump --user=root --host=localhost --port=3306 --result-file=%backupFile% --databases %databases%

:: Notify the user that the backup is complete
echo Backup complete: %backupFile%

:: Pause the script to allow the user to see the result
pause
