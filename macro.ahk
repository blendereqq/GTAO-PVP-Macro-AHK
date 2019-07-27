IF NOT A_IsAdmin
{
Run *RunAs "%A_ScriptFullPath%"
ExitApp
}
#NoEnv

IntMenuDelay = 100
KeySendDelay = 100
BetweenDelay = 30
KeyPressDuration = 20
RapidGunDelay = 200
ShortDelay = 10
EWODelay = 300
MediumDelay = 300

Spam = cry
Spam2 = cry modder
Spam3 = french mode
setkeydelay, %KeySendDelay%, %KeyPressDuration%, %BetweenDelay%, %RapidGunDelay%, %ShortDelay%, %EWODelay%, %MediumDelay%, %Spam%

BST := "n"
Armor := "Numpad1"
Ghost := "Numpad2"
NoPolice := "Numpad3"
FastSniperReload := "g"
RapidRPGKey := "c"
RapidSniperKey := "o"
Passive := "="
FastPassiveCEOMCKey := "Numpad4"
EWOKey := "n"
AmmoBuyWithGunCEOMCKey := "Numpad7"
AmmoBuyWithoutGunCEOMCKey := "Numpad8"
AmmoBuyWithGunNoCEOMCKey := "Numpad9"
AmmoBuyWithoutGunNoCEOMCKey := "]"
BuzzardCEOKey := "Numpad5"
BSTBlockKey := "f9"
BstAntiBlockKey := "f10"
BombEWOKey := "x"
ChatSpamKey := "k"
ChatSpamKey2 := "j"
ChatSpamKey3 := "l"

Hotkey, %BST%, BST
Hotkey, %Armor%, Armor
Hotkey, %Ghost%, Ghost
Hotkey, %NoPolice%, NoPolice
Hotkey, %FastSniperReload%, FastSniperReload
Hotkey, %RapidRPGKey%, RapidRPG
Hotkey, %RapidSniperKey%, RapidSniper
Hotkey, %Passive%, Passive
Hotkey, %FastPassiveCEOMCKey%, FastPassiveCEOMC
Hotkey, %EWOKey%, EWO
Hotkey, %AmmoBuyWithGunCEOMCKey%, AmmoBuyWithGunCEOMC
Hotkey, %AmmoBuyWithoutGunCEOMCKey%, AmmoBuyWithoutGunCEOMC
Hotkey, %AmmoBuyWithGunNoCEOMCKey%, AmmoBuyWithGunNoCEOMC
Hotkey, %AmmoBuyWithoutGunNoCEOMCKey%, AmmoBuyWithoutGunNoCEOMC
Hotkey, %BuzzardCEOKey%, BuzzardCEO
Hotkey, %BSTBlockKey%, BSTBlock
Hotkey, %BSTAntiBlockKey%, BSTAntiBlock
Hotkey, %BombEWOKey%, BombEWO
Hotkey, %ChatSpamKey%, ChatSpam
Hotkey, %ChatSpamKey2%, ChatSpam2
Hotkey, %ChatSpamKey3%, ChatSpam3
return

F3::
    Suspend, Toggle
return

BST:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Up 3}{Enter}{Down}{Enter}
return

Armor:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Up 3}{Enter}{Down 3}{Enter}
return

Ghost:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Up 3}{Enter}{Up 3}{Enter}
return

NoPolice:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Up 3}{Enter}{Up 2}{Enter}
return

FastSniperReload:
Send {5}
sleep, %ShortDelay%
Send {9}{Tab}
return

RapidRpg:
Loop, 10
{
Send {5}{4}{- down}
sleep, %RapidGunDelay%
Send {- up}
sleep, %BetweenDelay%
}
return

RapidSniper:
Loop, 15
{
Send {5}{9}{- down}
Sleep, %RapidGunDelay%
Send {- up}
Sleep, %BetweenDelay%
}
return

Passive:
Send {m}{Up}{Enter}{m}
return

FastPassiveCEOMC:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Up}{Enter 2}
sleep, %ShortDelay%
Send {m}
sleep, %ShortDelay%
Send {Up}{Enter}{m}
return

EWO:
Sendinput {- down}
Sleep, %KeySendDelay%
Send {m}
Sleep, %EWODelay%
Sendinput {c down}
Sleep, %ShortDelay%
Send {up}{up}{Enter}
Sleep, %ShortDelay%
Sendinput {- up}{Enter}{c up}
return

AmmoBuyWithGunCEOMC:
Send {Tab}{m}{Down 2}{Enter}{Up 3}{Enter}
Loop, 5
{
Send {Right}{Up}{Enter}{Down}
}
Send {Right}{Up}{Enter}{Down 2}{Right}
Loop, 5
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Down 2}{Enter}{Down}{Right}{Up}{Enter}{Up 2}
Loop, 4
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Up}{Right}{Up}{Enter}{Escape 3}
return

AmmoBuyWithoutGunCEOMC:
Send {m}{Down 2}{Enter}{Up 3}{Enter}
Loop, 5
{
Send {Right}{Up}{Enter}{Down}
}
Send {Right}{Up}{Enter}{Down 2}{Right}
Loop, 5
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Down 2}{Enter}{Down}{Right}{Up}{Enter}{Up 2}
Loop, 4
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Up}{Right}{Up}{Enter}{Escape 3}
return

AmmoBuyWithGunNoCEOMC:
Send {Tab}{m}{Down}{Enter}{Up 3}{Enter}
Loop, 5
{
Send {Right}{Up}{Enter}{Down}
}
Send {Right}{Up}{Enter}{Down 2}{Right}
Loop, 5
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Down 2}{Enter}{Down}{Right}{Up}{Enter}{Up 2}
Loop, 4
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Up}{Right}{Up}{Enter}{Escape 3}
return

AmmoBuyWithoutGunNoCEOMC:
Send {m}{Down}{Enter}{Up 3}{Enter}
Loop, 5
{
Send {Right}{Up}{Enter}{Down}
}
Send {Right}{Up}{Enter}{Down 2}{Right}
Loop, 5
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Down 2}{Enter}{Down}{Right}{Up}{Enter}{Up 2}
Loop, 4
{
Send {Down 2}{Enter}{Up 2}{Right}
Sleep, %MediumDelay%
}
Send {Up}{Right}{Up}{Enter}{Escape 3}
return

BuzzardCEO:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Up 2}{Enter}{Down 4}{Enter}
return

BSTBlock:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Down 2}{Enter}{Up 2}{Enter 2}
return

BSTAntiBlock:
Send {m}
sleep, %ShortDelay%
Send {Enter}{Down 2}{Enter}{Up 7}{Enter 2}
return

BombEWO:
Send {5}{Tab}{-}{= 5}
return

ChatSpam:
Send {t}%Spam%{Enter}
return

ChatSpam2:
Send {t}%Spam2%{Enter}
return

ChatSpam3:
Send {t}%Spam3%{Enter}
return
