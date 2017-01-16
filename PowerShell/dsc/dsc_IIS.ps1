Configuration IIS{
Import-DscResource -ModuleName PSDesiredStateConfiguration

  Node "$env:COMPUTERNAME"{
    WindowsFeature IIS{
        Ensure = 'present'
        Name = 'Web-Server'
    }
   }
  }
IIS -OutputPath:"C:\Users\username\Documents\GitHub\DevOps\PowerShell\dsc"