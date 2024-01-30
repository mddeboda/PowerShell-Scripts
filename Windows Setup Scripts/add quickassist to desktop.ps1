#	Add quickassist to public\Desktop\QuickAssist to make remote assistance easier
#	Hotkey for remote assistance
$SourceFilePath = "C:\WINDOWS\system32\quickassist.exe"
$ShortcutPath = "C:\Users\public\Desktop\QuickAssist.lnk"
$WScriptObj = New-Object -ComObject ("WScript.Shell")
$shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
$shortcut.TargetPath = $SourceFilePath
$shortcut.WindowStyle = 1
$ShortCut.Hotkey = "CTRL+";
$shortcut.Save()