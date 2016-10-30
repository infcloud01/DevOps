<# Add a domain group onto a remote server
source: https://gallery.technet.microsoft.com/scriptcenter/d4cd8c1e-7073-42af-8c7c-89e19334f979 
#>
#Initaliaze the Domain Group Object
$DomainGroup = [ADSI]"WinNT://DOMAIN/Citrix Desktop Users,group"
#Get Local Group object 
$LocalGroup = [ADSI]"WinNT://$Server/Remote Desktop Users,group"
#Assign DomainGroup to LocalGroup 
$LocalGroup.Add($DomainGroup.Path)  


