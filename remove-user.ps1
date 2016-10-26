#Powershell script to remove a user from a remote computer's local group#
#########################################################################
$Computer = $env:COMPUTERNAME
$GroupName = 'MyGroup'
$ADSI = [ADSI] ("WinNT://$Computer")
$Group = $ADSI.Children.Find($GroupName, 'group')

#Use this to call the ad user you're logged in as, but this only works if you have a loca account with the same name
#$User = $env:USERNAME
$User = 'Administrator'
$Group.Remove(("WinNt://$Computer/$User"))
