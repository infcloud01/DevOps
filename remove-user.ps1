#Powershell script to remove a user from a remote computer's local group
#########################################################################
$Computer = $env:COMPUTERNAME
$ADSI = [ADSI] ("WinNT://$Computer")

