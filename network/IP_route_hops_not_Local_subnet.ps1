﻿#comment 3 - This command gets network adapters that have IP routes that have next hops that are not in the local subnet. 
Get-NetRoute | Where-Object –FilterScript {$_.NextHop -Ne "::"} | Where-Object –FilterScript { $_.NextHop -Ne "0.0.0.0" } | Where-Object –FilterScript { ($_.NextHop.SubString(0,6) -Ne "fe80::") } 