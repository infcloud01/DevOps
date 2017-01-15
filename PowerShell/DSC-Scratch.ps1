Configuration audio{
  Param (
    [Parameter(Mandatory=$true)]
    [string[]]$ComputerName
  )
  node $ComputerName {
    Service audiosrv {
      Name='audiosrv'
      State='running'
    }
  }
}
audio -ComputerName $env:COMPUTERNAME -OutputPath  C:\dsc

Start-DscConfiguration -path . -wait -verbose
