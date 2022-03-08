#After a lot more research and talking with other powershell users on the best methods on uninstalling software, I will write out the notes here

#This is the most "Modern" looking approach. 
#We are avoiding Win32_Product which is a dangerous method because it goes through every program and can mess with your software to the point of damaging it.
#At this point, its a bit of a dead end.

    #Swtich out "Name" for the Application. You can also switch out -Match for -Like and use wildcard * 
Get-CimInstance -ClassName Win32_Process | Where-Object name -Match "Name" | Invoke-CimMethod -MethodName "Terminate"

#The other option for us of course is Command Line. You can find most of what you're trying to do simply by typing "Uninstall *app name* Command Line.
#I'm going to go over a few examples here and try to break them down.

wmic product where name="DNS Agent" call uninstall


