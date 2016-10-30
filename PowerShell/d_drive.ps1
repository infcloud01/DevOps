<#  
.SYNOPSIS  
	A powercli script to Enable Powershell, add a disk and provision as D Drive inside the VM    
.DESCRIPTION  
	This sciprt helps adding additional disk to VMs and provision it as D Drive. 

 Build engineer, Deployment Date and Functionality fields of annotation are automatically popultated.

.NOTES  
    Author         : Prashanth Mandalapu
    Prerequisite   : PowerShell V2 over Vista and upper.
#>

$computername = get-content E:\Script\New_winD.csv

#$Credential = get-credential
#$password = get-content  E:\Script\pass.txt
#$cred = New-Object -TypeName System.Management.Automation.PSCredential -argumentlist “tfayd\~206428265”,($password | ConvertTo-SecureString)

$User = "tfayd\~206428265"
$File = "E:\Script\pass.txt"
$Credential=New-Object -TypeName System.Management.Automation.PSCredential `
 -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)

$Dsize= 50

foreach ($VM in $computername) { 

#get-WmiObject win32_logicaldisk -Computer $VM -credential $cred

#E:\Script\Enable-RemotePSRemoting.ps1 $VM

write-host “Working on VM $VM initiated”  -foreground green

New-HardDisk -VM $VM -CapacityGB $Dsize -StorageFormat thin -Confirm:$false

Start-Sleep -s 2

#Invoke-Command -ComputerName $VM -FilePath E:\Script\Win_Lun.ps1 -credential $Credential
#Invoke-Command -ComputerName $VM -FilePath E:\Script\cifs_share.ps1 -credential $Credential

#Invoke-Command -ComputerName $VM -FilePath E:\Script\D_Drive.ps1 -D $Dsize -credential $Credential

Invoke-Command -ComputerName $VM -ScriptBlock  {

"rescan" | diskpart
$Disk = Get-Disk 1
$Disk | Initialize-Disk -PartitionStyle MBR
New-Partition -DiskNumber $Disk.Number -AssignDriveLetter -UseMaximumSize
Format-Volume -DriveLetter D -FileSystem NTFS -confirm:$false
$D1="_D$"
Format-Volume -DriveLetter D -NewFileSystemLabel "$env:computername$D1" -confirm:$false
}  -credential $Credential

#Invoke-Command -ComputerName $VM -FilePath E:\Script\failover.ps1 -credential $Credential
#Invoke-Command -ComputerName $VM {get-WmiObject win32_logicaldisk} -credential $cr

}
