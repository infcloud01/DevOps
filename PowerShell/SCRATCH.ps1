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


