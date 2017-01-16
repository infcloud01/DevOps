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

Configuration ExampleConfig{
  Import-DscResource -Module nx

  Node "centos"{
    nxFile ExampleFile{
        DesintationPath = "/tmp/example"
        Contents = "hello world \n"
        Ensure = "Present"
        Type = "File"
    }
  }
}

ExampleConfig -OutputPath:"C:\DSC"

Configuration IIS{
Import-DscResource -ModuleName PSDesiredStateConfiguration

  Node "$env:COMPUTERNAME"{
    WindowsFeature IIS{
        Ensure = 'present'
        Name = 'Web-Server'
    }
   }
   }
IIS -OutputPath:"C:\dsc"
