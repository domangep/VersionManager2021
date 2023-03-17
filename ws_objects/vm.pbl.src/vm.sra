$PBExportHeader$vm.sra
$PBExportComments$Generated Application Object
forward
global type vm from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type vm from application
string appname = "vm"
string appruntimeversion = "21.0.0.1311"
end type
global vm vm

on vm.create
appname = "vm"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on vm.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

