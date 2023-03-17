$PBExportHeader$w_proxy.srw
forward
global type w_proxy from window
end type
type sle_ip from singlelineedit within w_proxy
end type
type pb_pwd from picturebutton within w_proxy
end type
type pb_user from picturebutton within w_proxy
end type
type pb_port from picturebutton within w_proxy
end type
type pb_ip from picturebutton within w_proxy
end type
type cb_ok from commandbutton within w_proxy
end type
type cb_cancel from commandbutton within w_proxy
end type
type sle_pwd from singlelineedit within w_proxy
end type
type sle_usr from singlelineedit within w_proxy
end type
type sle_port from singlelineedit within w_proxy
end type
type st_pwd from statictext within w_proxy
end type
type st_usr from statictext within w_proxy
end type
type st_port from statictext within w_proxy
end type
type st_ip from statictext within w_proxy
end type
end forward

global type w_proxy from window
integer width = 1527
integer height = 860
boolean titlebar = true
string title = "Proxy Settings"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_ip sle_ip
pb_pwd pb_pwd
pb_user pb_user
pb_port pb_port
pb_ip pb_ip
cb_ok cb_ok
cb_cancel cb_cancel
sle_pwd sle_pwd
sle_usr sle_usr
sle_port sle_port
st_pwd st_pwd
st_usr st_usr
st_port st_port
st_ip st_ip
end type
global w_proxy w_proxy

type variables
str_proxy istr_proxy

end variables

forward prototypes
public subroutine of_get_settings ()
public function integer of_set_info (str_proxy astr_proxy)
public function integer of_get_info (ref str_proxy astr_proxy)
end prototypes

public subroutine of_get_settings ();
end subroutine

public function integer of_set_info (str_proxy astr_proxy);if isnull( astr_proxy ) or not isvalid( astr_proxy ) then return -1

sle_ip.text = astr_proxy.ip
sle_port.text = astr_proxy.port
sle_usr.text = astr_proxy.usr
sle_pwd.text = astr_proxy.pwd

return 1
end function

public function integer of_get_info (ref str_proxy astr_proxy);if isnull( astr_proxy ) or not isvalid( astr_proxy ) then return -1

astr_proxy.ip = sle_ip.text
astr_proxy.port = sle_port.text
astr_proxy.usr = sle_usr.text
astr_proxy.pwd = sle_pwd.text

return 1
end function

on w_proxy.create
this.sle_ip=create sle_ip
this.pb_pwd=create pb_pwd
this.pb_user=create pb_user
this.pb_port=create pb_port
this.pb_ip=create pb_ip
this.cb_ok=create cb_ok
this.cb_cancel=create cb_cancel
this.sle_pwd=create sle_pwd
this.sle_usr=create sle_usr
this.sle_port=create sle_port
this.st_pwd=create st_pwd
this.st_usr=create st_usr
this.st_port=create st_port
this.st_ip=create st_ip
this.Control[]={this.sle_ip,&
this.pb_pwd,&
this.pb_user,&
this.pb_port,&
this.pb_ip,&
this.cb_ok,&
this.cb_cancel,&
this.sle_pwd,&
this.sle_usr,&
this.sle_port,&
this.st_pwd,&
this.st_usr,&
this.st_port,&
this.st_ip}
end on

on w_proxy.destroy
destroy(this.sle_ip)
destroy(this.pb_pwd)
destroy(this.pb_user)
destroy(this.pb_port)
destroy(this.pb_ip)
destroy(this.cb_ok)
destroy(this.cb_cancel)
destroy(this.sle_pwd)
destroy(this.sle_usr)
destroy(this.sle_port)
destroy(this.st_pwd)
destroy(this.st_usr)
destroy(this.st_port)
destroy(this.st_ip)
end on

event open;istr_proxy = message.powerobjectparm

of_set_info( istr_proxy )
end event

type sle_ip from singlelineedit within w_proxy
integer x = 475
integer y = 48
integer width = 855
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type pb_pwd from picturebutton within w_proxy
integer x = 1349
integer y = 452
integer width = 110
integer height = 96
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Paste!"
alignment htextalign = left!
string powertiptext = "Paste Password from Clipboard"
end type

event clicked;sle_pwd.text = clipboard()
end event

type pb_user from picturebutton within w_proxy
integer x = 1349
integer y = 320
integer width = 110
integer height = 96
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Paste!"
alignment htextalign = left!
string powertiptext = "Paste User from Clipboard"
end type

event clicked;sle_usr.text = clipboard()

end event

type pb_port from picturebutton within w_proxy
integer x = 1349
integer y = 188
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Paste!"
alignment htextalign = left!
string powertiptext = "Paste Port from Clipboard"
end type

event clicked;sle_port.text = clipboard()
end event

type pb_ip from picturebutton within w_proxy
integer x = 1349
integer y = 56
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Paste!"
alignment htextalign = left!
string powertiptext = "Paste Ip from Clipboard"
end type

event clicked;sle_ip.text = clipboard()
end event

type cb_ok from commandbutton within w_proxy
integer x = 645
integer y = 628
integer width = 402
integer height = 112
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "&Ok"
boolean default = true
end type

event clicked;of_get_info( istr_proxy )

closewithreturn( parent, istr_proxy )
end event

type cb_cancel from commandbutton within w_proxy
integer x = 1070
integer y = 628
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "&Cancel"
boolean cancel = true
end type

event clicked;closewithreturn( parent, '!' )
end event

type sle_pwd from singlelineedit within w_proxy
integer x = 475
integer y = 444
integer width = 855
integer height = 112
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_usr from singlelineedit within w_proxy
integer x = 475
integer y = 312
integer width = 855
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_port from singlelineedit within w_proxy
integer x = 475
integer y = 180
integer width = 855
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_pwd from statictext within w_proxy
integer x = 50
integer y = 468
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Password :"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_usr from statictext within w_proxy
integer x = 50
integer y = 336
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "User :"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_port from statictext within w_proxy
integer x = 50
integer y = 204
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Port  :"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_ip from statictext within w_proxy
integer x = 50
integer y = 72
integer width = 402
integer height = 68
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Ip Adress :"
alignment alignment = right!
boolean focusrectangle = false
end type

