$PBExportHeader$version_manager.sra
$PBExportComments$Generated Application Object
forward
global type version_manager from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type version_manager from application
string appname = "version_manager"
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appruntimeversion = "21.0.0.1509"
end type
global version_manager version_manager

on version_manager.create
appname="version_manager"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on version_manager.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;openwithparm(w_main, commandline)
end event

