# Ytdl


**Ytdl** is tasker+termux project to download YouTube videos and audios on **android** easily.

#### Features
* Download YouTube videos, playlists, and audios.
* Supports downloading by copying YouTube link to clipboard, or sharing link to termux app.
* Supports all YouTube links, including channel links, playlist links, embedded videos links and **YT music** links. Livestream downloading hasn't been tested yet. Youtube mix links are not supported by yt-dlp.
* Select or unselect videos in a playlist/channel that you want to download.
* Get live update of download status in notification.
* Cancel any download from notification.
* Does not require any Tasker Plugins.
* Option to enable cataloging of playlists, by downloading playlist to a seperate folder of its name.

#### Pre-requisites
* Tasker app ([Play store link](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm))
* Termux ([Fdroid link](https://f-droid.org/en/packages/com.termux/), [Play store link](https://play.google.com/store/apps/details?id=com.termux))

#### Installation


1. Copy and paste the following single line command in termux and press Enter key.  
      ```curl https://raw.githubusercontent.com/Practicalbutterfly5/ytdl/main/installytdl | bash```  
   
   It will automatically download these Termux packages- ffmpeg, python, yt-dlp, atomicparsley, git (Approx. download size 80 Mb), and clone ytdl repo.

2. Tasker will open automatically and prompt to import ytdl project. If it doesn't, import project manually from /sdcard/Tasker/ytdl/ytdl.prj.xml

3. Launch the ytdl_Initial_Setup task and configure your preferences. Re-run this task if you want to change any setting in future.

 
#### USAGE

After ytdl is installed and setup task is run, you are ready to download using any of these method.

* **Method 1**  
  Share any YouTube link to termux app. Termux app will open momentarily and then close, if it didn't have any active sessions.  
  
  To use this method on Android version>=10, make sure that Termux has "Display over other apps" permission.


* **Method 2**  
  **Android version<=9**,  will be able to copy YouTube link to clipboard and trigger ytdl.  
  
  **Android version>=10**, will need to give tasker ```android.permission.WRITE_SECURE_SETTINGS```. [This can be done using adb for non-root users](https://tasker.joaoapps.com/userguide/en/help/ah_secure_setting_grant.html), rooted users can simply execute ```pm grant net.dinglisch.android.taskerm android.permission.WRITE_SECURE_SETTINGS``` in rooted shell.


#### [Changelogs](https://github.com/Practicalbutterfly5/ytdl/blob/main/Changelogs)
**Version 1.30 -2023/03/12** - Moving over to yt-dlp and ditching youtube-dl for good. Functionality should not be affected.
