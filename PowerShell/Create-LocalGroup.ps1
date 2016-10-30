#Create a local group on a local computer
#########################################
$Computer = $env:COMPUTERNAME
$ADSI = [ADSI] ("WinNT://$Computer")

$Group = $ADSI.Create('Group', 'MyGroup')
$Group.SetInfo()
$Group.Description = 'This is an automated group'
$Group.SetInfo()