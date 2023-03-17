$PBExportHeader$n_cst_file.sru
forward
global type n_cst_file from nonvisualobject
end type
end forward

global type n_cst_file from nonvisualobject autoinstantiate
end type

type variables
listbox	ilb_ref

end variables

forward prototypes
public function integer of_parsefile (string as_filename, string as_token, string as_valuedelimitedby, ref string as_result[])
public function integer of_getfilelist (string as_filespec, ref string as_result[], listbox alb_control)
public function integer of_getfilelist (string as_filespec, ref string as_result[], window aw_control)
end prototypes

public function integer of_parsefile (string as_filename, string as_token, string as_valuedelimitedby, ref string as_result[]);integer	li_rc
integer	li_i
integer	li_file
long		ll_pos
long		ll_pos2
string		ls_tmp

if isnull( as_filename ) or len(trim( as_filename )) = 0 then return -1
if fileexists( as_filename ) = false then return -1
if isnull( as_token) or len(trim( as_token )) = 0 then return -1

li_file = fileopen( as_filename, linemode!, read! )
if li_file = -1 then return -1

li_rc = fileread( li_file, ls_tmp)
do until li_rc = -100
	ll_pos = pos( ls_tmp, as_token ) 
	if ll_pos > 0 then
		ls_tmp = mid( ls_tmp, ll_pos + len( as_token) )
		if not isnull( as_valuedelimitedby ) and len(trim( as_valuedelimitedby)) > 0 then
			ll_pos = pos( ls_tmp, as_valuedelimitedby)
			ll_pos2 = lastpos( ls_tmp, as_valuedelimitedby)
			if ll_pos > 0 and ll_pos2 > 0 then
				ls_tmp = left( ls_tmp, ll_pos2 - 1)
				ls_tmp = mid( ls_tmp , ll_pos + 1)
			end if
		end if

		li_i++
		as_result[li_i] = ls_tmp
	end if
	li_rc = fileread( li_file, ls_tmp)
loop

li_rc = fileclose( li_file )
if li_rc = -1 then return -1

return li_i
end function

public function integer of_getfilelist (string as_filespec, ref string as_result[], listbox alb_control);integer 	li_rc
integer	li_i
integer	li_limit

if isnull( as_filespec ) or len(trim(as_filespec)) = 0 then return -1

if alb_control.dirlist( as_filespec, 0) = false then return -1

li_limit = alb_control.TotalItems()

for li_i = 1 to li_limit
	alb_control.selectitem(li_i)
	as_result[li_i] = alb_control.SelectedItem()
next

return li_limit
end function

public function integer of_getfilelist (string as_filespec, ref string as_result[], window aw_control);integer 	li_rc
integer	li_i
integer	li_limit

if isnull( as_filespec ) or len(trim(as_filespec)) = 0 then return -1
if isnull( aw_control) or not isvalid( aw_control ) then return -1

aw_control.openuserobject( ilb_ref )

li_rc = this.of_getfilelist( as_filespec, as_result, ilb_ref )

aw_control.closeuserobject( ilb_ref )

return li_rc
end function

on n_cst_file.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_file.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

