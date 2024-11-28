Example: To remove: `wusa /uninstall /kb:5001330`


# Windows Update Standalone Installer
```
wusa </? | /h | /help>

wusa <update> [/quiet] [/norestart | /warnrestart:<seconds> | /promptrestart | /forcerestart] /log:<file name>]

wusa /uninstall <update> [/quiet] [/norestart | /warnrestart:<seconds> | /promptrestart | /forcerestart]/log:<file  name>]

wusa /uninstall /kb:<KB number> [/norestart | /warnrestart:<seconds> | /promptrestart | /forcerestart] [/log:<file
name>]

/?, /h, /help
- Display help information.

update
- Full path of the MSU file.

/quiet
- Quiet mode, no user interaction. Reboot as needed.

/uninstall
- Installer will uninstall the package.

/kb
- When combined with /uninstall, installer will uninstall the package associated with the KB number.

/norestart
- When combined with /quiet, installer will NOT initiate reboot.

/warnrestart
- When combined with [quiet, installer will warn the user before initiating reboot.

/promptrestart
- When combined with [quiet, installer will prompt before initiating reboot.

/forcerestart
- When combined with [quiet, installer will forcefully close applications and initiate reboot.

/log
- Installer will enable logging.
```
