#Map a drive
New-PSDrive -Persist -Name 'I' -PSProvider "FileSystem" -Root "\\WindowsShare" 
