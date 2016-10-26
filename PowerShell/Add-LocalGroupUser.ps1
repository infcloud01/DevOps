#Add a local user into a local group#
#####################################
$Computer = $env:COMPUTERNAME
$GroupName = 'MyGroup'
$ADSI = [ADSI] ("WinNT://$Computer")
$Group = $ADSI.Children.Find($GroupName, 'group')

$User = 'Administrator'
$Group.Add(("WinNT://$computer/$user"))


