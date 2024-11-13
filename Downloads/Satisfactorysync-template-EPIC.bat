@echo off
set "id=[ID]"
echo Checking if someone else isn't online
rclone ls satisfactory:online >nul  2>&1
IF ERRORLEVEL 1 (GOTO noone) ELSE (GOTO online)
:online
echo Someone else is already online, join their session
pause
exit
:noone
rclone mkdir satisfactory:online
echo Downloading saves
rename %localappdata%\FactoryGame\Saved\SaveGames\%id% Single
rclone sync satisfactory:MP %localappdata%\FactoryGame\Saved\SaveGames\MP
rename %localappdata%\FactoryGame\Saved\SaveGames\MP %id%
echo Starting the game
start /W "" "com.epicgames.launcher://apps/crab%%3Aef4a63daa7d4420e91420a72050be89d%%3ACrabTest?action=launch&silent=true"
timeout /t 20 /nobreak
:loop
timeout /T 10 /nobreak  >nul
tasklist | find  /i "FactoryGameEGS.exe" >nul  2>&1
IF ERRORLEVEL 1 (GOTO continue) ELSE (GOTO loop)
:continue
echo Waiting 30 seconds for cloud saving
TIMEOUT /T 30
rename %localappdata%\FactoryGame\Saved\SaveGames\%id% MP
echo Uploading saves
rclone sync %localappdata%\FactoryGame\Saved\SaveGames\MP satisfactory:MP
rclone rmdir satisfactory:online
rename %localappdata%\FactoryGame\Saved\SaveGames\Single %id%
