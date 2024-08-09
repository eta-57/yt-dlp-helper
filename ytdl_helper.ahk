#Requires AutoHotkey v2.0
#SingleInstance
^!s::{
    Clipboard_Backup := A_Clipboard
    send "{LCtrl down}{LAlt down}y{LAlt up}{LCtrl up}"
    sleep 5
    run A_ScriptDir "\ytdl_helper.lnk /c yt-dlp " A_Clipboard ,, "min"
    A_Clipboard := Clipboard_Backup
}