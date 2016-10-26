#Remove a local group from a computer#
######################################
$Computer = $env:COMPUTERNAME
$GroupName = 'MyGroup'
$ADSI = [ADSI] ("WinNT://$Computer")

$Group = $ADSI.Children.Find($GroupName, 'group')
$ADSI.Children.Remove($Group)
