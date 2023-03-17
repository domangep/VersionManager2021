$PBExportHeader$u_version_ctrl_anc.sru
forward
global type u_version_ctrl_anc from userobject
end type
type em_1 from editmask within u_version_ctrl_anc
end type
type st_title from statictext within u_version_ctrl_anc
end type
end forward

global type u_version_ctrl_anc from userobject
integer width = 782
integer height = 660
long backcolor = 67108864
string text = "none"
borderstyle borderstyle = styleraised!
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
event ue_version_changed ( string version )
em_1 em_1
st_title st_title
end type
global u_version_ctrl_anc u_version_ctrl_anc

type variables


end variables

forward prototypes
public function integer of_setversion (string as_version)
public function string of_getversion ()
end prototypes

public function integer of_setversion (string as_version);if isnull( as_version ) or as_version = "" or isnumber(as_version) = false then return -1

em_1.text = as_version

return 1
end function

public function string of_getversion ();return em_1.text
end function

on u_version_ctrl_anc.create
this.em_1=create em_1
this.st_title=create st_title
this.Control[]={this.em_1,&
this.st_title}
end on

on u_version_ctrl_anc.destroy
destroy(this.em_1)
destroy(this.st_title)
end on

type em_1 from editmask within u_version_ctrl_anc
integer y = 104
integer width = 768
integer height = 540
integer taborder = 10
integer textsize = -72
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "0"
alignment alignment = center!
borderstyle borderstyle = stylelowered!
string mask = "##0"
boolean spin = true
double increment = 1
string minmax = "0~~99"
end type

event modified;parent.event ue_version_changed( this.text )
end event

type st_title from statictext within u_version_ctrl_anc
integer width = 768
integer height = 92
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 15780518
string text = "none"
alignment alignment = center!
boolean focusrectangle = false
end type

