#This doesn't work yet, fails to meet local password complexity
$Computer = $env:COMPUTERNAME
$ADSI = [ADSI] ("WinNT://$Computer")

$Group = $ADSI.Create('User', 'MyUser')
$Group.SetInfo()