#Requires AutoHotkey v2.0
#SingleInstance
^!s::{
    send "{LCtrl down}{LAlt down}y{LAlt up}{LCtrl up}"
    sleep 5
    run A_ScriptDir "\ytdl_helper.lnk /c yt-dlp " A_Clipboard ,, "min"
}