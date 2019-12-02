@echo off
echo "Initializing... "
echo "Testing Network Environment..."
ping YOURDOMAINSERVER >null
DEL NULL
IF ERRORLEVEL 1 goto error
IF ERRORLEVEL 0 goto OK
:error
echo msgbox "Sorry! Your are not connecting  DOMAIN  Network, Please Check your  Wifi Setting" > %tmp%\popup.vbs
cscript /nologo %tmp%\popup.vbs
del %tmp%\tmp.vbs
exit 0
:OK
NET USE \\YOURDOMAINSERVER /user: DOMAIN \DOMAINUSER DOMAINUSERPASSWORD
IF ERRORLEVEL 1 goto username
echo msgbox "Your Connected DOMAIN Network , Now you can use DOMAIN Printer" > %tmp%\popup.vbs
cscript /nologo %tmp%\popup.vbs
del %tmp%\tmp.vbs
exit 0
:username
echo msgbox "Please contact LOCAL IT to check your account status" > %tmp%\popup.vbs
cscript /nologo %tmp%\popup.vbs
del %tmp%\tmp.vbs
exit 0
