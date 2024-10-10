# Satisfactory-multiplayer-cloud-sync
## Features:
- Checks whether someone else isn't online to prevent progress loss.
- Downloads savegame from the cloud before the game starts, uploads it back when the game closes.
- Doesn't mix your normal saves with the MP ones.
- You can use cloud service of your choice (tested on google drive).

## Setup:
0.) Backup you saves in case something goes wrong

1.) Download [Rclone](https://rclone.org/downloads/)

2.) Setup cloud service of your choice using a guide on their site, you only have to give the drive name "satisfactory".
- Tip: You can open command prompt in a current folder by typing "cmd" into the address bar in file explorer)
- Google drive: https://rclone.org/drive/ 
- I recommend creating a new account just for that.
    
3.) Open the script in notepad and replace [ID] (2nd line, without the brackets) with your Epic or Steam ID (or you can enter the name of the folder which you can find in %localappdata%\FactoryGame\Savegames)

4.) I recommend disabling cloud saves in your store launcher to avoid mixing of your and your friend's saves (honestly, i dont have any idea what syncing of steam_autocloud.vdf could do)

5.) All your friends have to do that with the same cloud account

### Note: 
- First time you run this, it will throw one error, just ignore this.
- Never close the command prompt manually

