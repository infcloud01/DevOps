$DomainGroup = "GroupName"
$LocalGroup  = "Administrators"
$Computer    = $env:computername
$Domain      = $env:userdomain

([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainGroup").path)