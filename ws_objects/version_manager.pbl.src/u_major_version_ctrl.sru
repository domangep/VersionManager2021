﻿$PBExportHeader$u_major_version_ctrl.sru
forward
global type u_major_version_ctrl from u_version_ctrl_anc
end type
end forward

global type u_major_version_ctrl from u_version_ctrl_anc
end type
global u_major_version_ctrl u_major_version_ctrl

on u_major_version_ctrl.create
call super::create
end on

on u_major_version_ctrl.destroy
call super::destroy
end on

type em_1 from u_version_ctrl_anc`em_1 within u_major_version_ctrl
end type

type st_title from u_version_ctrl_anc`st_title within u_major_version_ctrl
string text = "Major"
end type

