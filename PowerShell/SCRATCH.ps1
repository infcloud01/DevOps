function foo(){
Get-Process -name $args[0] | Select-Object -property Name, $args[1]
}

function svcs(){
Get-Service | Select-Object -property Name | Select-Object -First 10
}

get-verb | measure

Get-Alias

# restart-computer

get-service | Where-Object Status -EQ $args[0]

Enter-PSSession 'computername'
Invoke-Command -ComputerName Server01, Server02 -FilePath c:\Scripts\DiskCollect.ps1

Establish a Persistent Connection
To run a series of related commands that share data, create a session on the remote computer and then use the Invoke-Command cmdlet to run commands in the session that you create. To create a remote session, use the New-PSSession cmdlet.
For example, the following command creates a remote session on the Server01 computer and another remote session on the Server02 computer. It saves the session objects in the $s variable.

$s = New-PSSession -ComputerName Server01, Server02

Now that the sessions are established, you can run any command in them. And because the sessions are persistent, you can collect data in one command and use it in a subsequent command.
For example, the following command runs a Get-HotFix command in the sessions in the $s variable and it saves the results in the $h variable. The $h variable is created in each of the sessions in $s, but it does not exist in the local session.

Invoke-Command -Session $s {$h = Get-HotFix}