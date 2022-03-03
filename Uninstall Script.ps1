#Swtich out "Name" for the Application. You can also switch out -Match for -Like and use wildcard * 
Get-CimInstance -ClassName Win32_Process | Where-Object name -Match "Name" | Invoke-CimMethod -MethodName "Terminate"
