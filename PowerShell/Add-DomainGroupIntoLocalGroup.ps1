<# Add a domain group onto a remote server
source: https://gallery.technet.microsoft.com/scriptcenter/d4cd8c1e-7073-42af-8c7c-89e19334f979 
#>
#MyChanges: Edit the domain group name, change the $server variable to an input, change the remote group,
#Use the command line parameters for the server and group name
$server = $args[0]
$GroupName = $args[1]
#Get the domain group object
$DomainGroup =[ADSI]"WinNT://$env:USERDOMAIN/$GroupName,group"
#Get the Local Group object 
$LocalGroup=[ADSI]"WinNT://$server/MyGroup,group"
#Assign the DomainGroup to the LocalGroup
$LocalGroup.Add($DomainGroup.Path)
