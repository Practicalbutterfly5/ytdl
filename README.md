This is a tasker+termux project to download YouTube videos, audio, playlists, etc on **android** easily.

#### Features
* Download YouTube videos, playlists and audio.
* Supports downloading by copying the YouTube link to the clipboard, or sharing link to termux app.
* **Supports all YouTube links, including channel links, playlist links, embedded video links, and YT music links.** Livestream downloading hasn't been tested yet.
* Select or unselect videos in a playlist/channel that you want to download.
* Get a live update of download status in the notification.
* Cancel any download from the notification.
* Does not require any Tasker Plugins.
* Option to enable cataloging of playlists, by downloading playlists to a separate folder of their name.

#### Pre-requisites
* Tasker app ([Play store link](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm))
* Termux ([Fdroid link](https://f-droid.org/en/packages/com.termux/), [Play store link](https://play.google.com/store/apps/details?id=com.termux))

#### Installation

1. Copy and paste the following commands in termux and press Enter key (also press enter on any prompts).  
* To upgrade termux packages:  
`apt update && apt upgrade`
* To install ytdl:  
`curl https://raw.githubusercontent.com/Practicalbutterfly5/ytdl/main/installytdl | bash`  
It will automatically download these Termux packages- ffmpeg, python, yt-dlp, atomicparsley, git and clone ytdl repo.

2. Tasker will open automatically and prompt to import ytdl project. If it doesn't, import the project manually from /sdcard/Tasker/ytdl/ytdl.prj.xml

3. Launch the ytdl_Initial_Setup task in tasker and configure your preferences. Re-run this task if you want to change any settings in the future.

 
#### USAGE

After ytdl is installed and the setup task is run, you are ready to download using any of these methods.

* **Method 1**  
  Share any YouTube link to termux app. Termux app will open momentarily and then close, if it didn't have any active sessions.  
  
  To use this method on Android version>=10, make sure that Termux has "Display over other apps" permission.


* **Method 2**  
  **Android version<=9**,  will be able to copy the YouTube link to the clipboard and trigger ytdl.  
  
  **Android version>=10**, will need to give tasker ```android.permission.WRITE_SECURE_SETTINGS```. [This can be done using adb for non-root users](https://tasker.joaoapps.com/userguide/en/help/ah_secure_setting_grant.html), rooted users can simply execute ```pm grant net.dinglisch.android.taskerm android.permission.WRITE_SECURE_SETTINGS``` in rooted shell.


#### [Changelogs](https://github.com/Practicalbutterfly5/ytdl/blob/main/Changelogs)
**Version 1.30 -2023/03/12** - Moving over to yt-dlp and ditching youtube-dl for good. Functionality should not be affected.
