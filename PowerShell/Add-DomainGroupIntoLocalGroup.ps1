<# Add a domain group onto a remote server
source: https://gallery.technet.microsoft.com/scriptcenter/d4cd8c1e-7073-42af-8c7c-89e19334f979 
#>
#MyChanges: Edit the domain group name, change the $server variable to an input, change the remote group,
#Initaliaze the Domain Group Object
$server = $args[0]
#Get the domain group name
$GroupName = $args[1]
$DomainGroup =[ADSI]"WinNT://$env:USERDOMAIN/$GroupName,group"
#Get Local Group object 
$LocalGroup=[ADSI]"WinNT://$server/MyGroup,group"
#Assign DomainGroup to LocalGroup
$LocalGroup.Add($DomainGroup.Path)