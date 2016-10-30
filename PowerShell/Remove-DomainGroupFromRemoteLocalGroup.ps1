#Remove a domain group from a remote severs local group#
########################################################
#Use the command line parameters for the server and group name
$server = $args[0]
$GroupName = $args[1]
#Get the domain group object
$DomainGroup =[ADSI]"WinNT://$env:USERDOMAIN/$GroupName,group"
#Get Local Group object 
$LocalGroup=[ADSI]"WinNT://$server/MyGroup,group" #Change MyGroup to your local group
#Remove the DomainGroup from the LocalGroup
$LocalGroup.Remove($DomainGroup.Path)