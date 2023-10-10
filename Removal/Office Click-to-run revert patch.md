Here is the solution:

 1. Start any office app, e.g. Word, *from the start menu* (start button / Microsoft Office 2013 / (app). This link should work; it's only links that have been copied to desktops, taskbars, etc. that don't.
 2. Click on a blank document (or workbook, or whatever) to get to a regular document window. Then use File / Account to open the account/version/activation screen. Click the *Update Options* button and select *Disable Updates* from the menu. This is important because you don't want your computer downloading the update again after you uninstall it!
 3. (Note you can also do steps 1 and 2 only to proactively prevent any computer running Office 2013 64-bit from updating if it hasn't done so already. The installed version will show on this screen, and if it's earlier than 15.0.5589.1001, just turn off updates and you will have dodged the bullet. Congratulations, you're done.)
 4. Assuming you *have* been updated, close the office app you have loaded and any and all other Office 2013 apps.
 5. Open an elevated command prompt (run cmd.exe as administrator)
 6. Change to the Office 2013 click-to-run base folder:
'''cd "%ProgramFiles%\Microsoft Office 15\ClientX64"'''
 7. Revert to version 15.0.5571.1000, which does not have this bug:
'''officec2rclient.exe /update user updatetoversion=15.0.5571.1000'''
 8. Wait a bit. Be patient, it takes a few minutes. You will see a box pop up (not immediately, don't worry) informing you that updates are being downloaded; then that box will close and another will pop up telling you that updates are being installed. When this second box closes, you are done.

I've done this on few computers so far and it's worked flawlessly.

[Source - Microsoft Learn Answers](https://learn.microsoft.com/en-us/answers/questions/1372446/office-the-operating-system-is-not-presently-confi)
