#singleInstance,off
detectHiddenWindows,On
Gui,Color,696969,eaeaea

Gui,Font,s10
Gui,ADd,Button,x10 y10 w80 h30 gSetHPwindow1,Set Win
Gui,Font,s14
Gui,Add,Edit,x+10 w180 h30 vHPWindow1 gUpdate
Gui,Font

Gui,Font,s10
Gui,add,Button,x+10 w100 h30 gHide_Show_HP,ReHide/Show
Gui,Font

Gui,Font,s14 cWhite
Gui,Add,Radio,x10 y+10 checked vHarvestRad gupdate,Auto Harvest (Min Tractor)
Gui,Add,Radio,x10 y+10 vPlantRad gUPdate,Auto Plant (Chicken Plow)
gui,Font

Gui,font,s8 cWhite
Gui,add,Text,x10 y+10 ,Turn :
Gui,font,s8 cBlack
Gui,add,edit,x+10 gUPdate w50 vTurn,0

Gui,Font,s15
Gui,add,Button,x10 y+10 w120 h50 vStarthp gStarthp,Start
Gui,Add,Button,x+10 w120 h50 vStopHp gStophp,Stop
Gui,Add,Button,x+10 w120 h50 gReload,Reload

Gui,Show,x0 y0 ,STvenXJ Auto Harvest | Plant 
Gui,Submit,Nohide
return

Update:
Gui,Submit,Nohide
return

StopHp:
Mulai := 0
GuiControl,Disable,StopHP
GuiControl,Enable,StartHP
ControlSend,,{right up},ahk_pid %HPWIndow1%
ControlSend,,{Left up},ahk_pid %HPWIndow1%

return

StartHp:
Mulai := 1
GuiControl,Disable,Starthp
Guicontrol,Enable,Stophp

if (HArvestRad == 1){
    loop %Turn% {
        if (mulai == 1){
            ControlSend,,{right Down}, ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,16000
			}
			ControlSend,,{right up},ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,200
			}
        }
		if (mulai == 1) {
			ControlSend,,{right Down}, ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,7200
			}
			ControlSend,,{right up},ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,200
			}
		}


		if (mulai == 1) {
			ControlSend,,{left Down}, ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,16000
			}
			ControlSend,,{left up},ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,200
			}
		}
		if (mulai == 1) {
			ControlSend,,{left Down}, ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,7200
			}
			ControlSend,,{left up},ahk_pid %HPWIndow1%
            if (mulai == 1) {
				sleep,200
			}
		}
    }
}

goto,stophp
return



setHpwindow1:
TargetHP := Set_Window(TAargetHP)
GuiControl,,HPWindow1, % TargetHP
return

Set_Window(TArgetHP)
{
	klik := 0
	A := 0
	loop {
		klik_kiri := GetKeystate("LBUtton")
		WinGetTitle := Temp_Window,A
		ToolTip,Click on the target window`n`nTo set window
		if (klik_kiri == False && klik == 0)
		klik := 1
		else if (klik_kiri == True && Klik == 1)
		{
			A++,Klik := 0
			if (A>0)
			{
				;WinSetTitle,Ahk_pid,A
				WinGet,TargetHp,pid,A
				tooltip,
				break
			}
		}
	}
Return targetHP
}


Hide_Show_HP:
if (HpWindow1 != ""){
    if HP {
        WinSHow,ahk_pid %HPWIndow1%
    }
    else {
        WinHide,ahk_pid %HpWindow1%
    }
}
Hp := !HP
return

return

return

REload:
reload
return

Guiclose:
ExitApp
return
