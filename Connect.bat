@echo off
echo "Initializing... "
echo "Testing Network Environment..."
ping Your Server >null
IF ERRORLEVEL 1 goto error
IF ERRORLEVEL 0 goto OK
:error
echo msgbox "Sorry! Your are not connecting  Domain Network, Please Check your  Wifi Setting" > %tmp%\popup.vbs
cscript /nologo %tmp%\popup.vbs
del %tmp%\tmp.vbs
exit 0
:OK
NET USE Your Server /user:domain\domainuser domainuserpassword
echo msgbox "Your Connected Domain Network , Now you can use Domain Printer" > %tmp%\popup.vbs
cscript /nologo %tmp%\popup.vbs
del %tmp%\tmp.vbs
exit 0

