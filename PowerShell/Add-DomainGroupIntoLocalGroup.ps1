<# Add a domain group onto a remote server
source: https://gallery.technet.microsoft.com/scriptcenter/d4cd8c1e-7073-42af-8c7c-89e19334f979 
#>
#MyChanges: Edit the domain group name, change the $server variable to an input, change the remote group,
#Get the server name from the command line
$server = $args[0]
#Get the domain group name from the command line
$GroupName = $args[1]
$DomainGroup =[ADSI]"WinNT://$env:USERDOMAIN/$GroupName,group"
#Get Local Group object 
$LocalGroup=[ADSI]"WinNT://$server/MyGroup,group" #Chage MyGroup to your local group
#Assign DomainGroup to LocalGroup
$LocalGroup.Add($DomainGroup.Path)