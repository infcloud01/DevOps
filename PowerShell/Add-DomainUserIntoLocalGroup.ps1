#Use this if you want to prompt for a username
#$DomainUser = Read-Host Enter a user name: 
$DomainUser = $args[0]
$LocalGroup = "Administrators"
$Computer = $args[1]
#Use this if you want to prompt for a server name
#$Computer = Read-Host Enter a server name:
$Domain     = $env:USERDOMAIN
([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainUser").path)