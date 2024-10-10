# Satisfactory-multiplayer-cloud-sync
## Features:
- Checks whether someone else isn't online to prevent progress loss.
- Downloads savegame from the cloud before the game starts, uploads it back when the game closes.
- Doesn't mix your normal saves with the MP ones.
- You can use cloud service of your choice (tested on google drive).

## Setup:
0.) Backup you saves in case something goes wrong

1.) Download [Rclone](https://rclone.org/downloads/)

2.) Setup cloud service (you can open command prompt by typing "cmd" into address bar in file explorer) of your choice using a guide on their site, you only have to give the drive name "satisfactory".
- Google drive: https://rclone.org/drive/ 
- I recommend creating a new account just for that.
    
3.) Open the script in notepad and replace [ID] (2nd line, without the brackets) with your Epic or Steam ID (or you can enter the name of the folder which you can find in %localappdata%\FactoryGame\Savegames)

4.) All your friends have to do that with the same cloud account

### Note: 
- First time you run this, it will throw one error, just ignore this.
- Never close the command prompt manually

