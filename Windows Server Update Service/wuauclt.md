Windows Update Automatic Update CLienT​

wuauclt - Windows Update - Windows CMD - SS64.com [https://ss64.com/nt/wuauclt.html]

wusa - Windows Update - Windows CMD - SS64.com [https://ss64.com/nt/wusa.html]



Windows 10 switches:

/UpdateDeploymentProvider
/IdleShutdownNow
/ResetEulas
/ResetAuthorization
/RunHandlerComServer
/ReportNow

On older systems (Windows 8.1 and earlier, Server 2012R2 and earlier) you can see that you have a lot more.

/DemoUI
/BeginInteractiveOSUpgrade
/InstallOSUpgrade
/IdleShutdownNow
/ShowOptions
/ShowCheckForUpdates
/ShowWUAutoScan
/UpdateNow
/SelfUpdateUnmanaged
/SelfUpdateManaged
/CloseWindowsUpdate
/ShowWindowsUpdate
/ShowWU
/ResetEulas
/ResetAuthorization
/ShowSettingsDialog
/RunHandlerComServer
/ReportNow
/DetectNow

As you can see, the bolded ones are common between old versions and new versions of Windows.

If you notice, /DetectNow is no longer in the list for Windows 10. This is because Microsoft has deprecated and removed it. Windows 10 has replaced it with: PowerShell.exe (New-Object -ComObject Microsoft.Update.AutoUpdate).DetectNow() or UsoClient.exe StartScan (Still undocumented by Microsoft as of October 2020, but used in forums with success).

As you can see, /ReportNow is still listed, but it has a has a special use case. Microsoft’s official documentation on this switch says “Sends all queued reporting events to the server asynchronously.” but what does that really mean? It means that if there are events to report back to WSUS which have been queued up by the detection sequence (/DetectNow OR the PowerShell or UsoClient equivalent), then when this command is run, it will force the immediate reporting back to WSUS – but only if you have events that were queued up.

One thing to remember is that the detection sequence WILL ALWAYS REPORT BACK if there are queued events, but it has a 20 minute cool-down delay.

The purpose of the /reportnow parameter is to immediately expire that 20 minute delay.

So, when executing  these two commands together or immediately one after the other, the wuauclt /reportnow command actually does nothing at all.

The proper way to use these two commands, is to first launch the wuauclt /detectnow task (and now the PowerShell equivalent for Windows 10+/Server 2016+), and then WAIT for the completion of the detection event. Typically this could take a couple of minutes, but on a healthy, fully patched system, it may complete in a matter of seconds.

Once the WUAgent is idle, then executing wuauclt /reportnow will cause the call to the ReportingWebService to occur immediately, rather than waiting for the built-in 20 minute delay.​





reg query HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /s

net stop wuauserv
net start wuauserv
wuauclt /detectnow /installnow​
