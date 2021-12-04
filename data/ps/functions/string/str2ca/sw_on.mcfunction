data modify block 29999999 2 3006 UpdateLastExecution set value 0b
data modify block 29999999 2 3005 UpdateLastExecution set value 0b
data modify block 29999999 2 3004 UpdateLastExecution set value 0b
data modify block 29999999 2 3003 UpdateLastExecution set value 0b
data modify block 29999999 2 3002 UpdateLastExecution set value 0b
data modify block 29999999 2 3001 UpdateLastExecution set value 0b
data modify block 29999999 1 3001 UpdateLastExecution set value 0b
data modify block 29999999 1 3002 UpdateLastExecution set value 0b
data modify block 29999999 1 3003 UpdateLastExecution set value 0b
data modify block 29999999 1 3004 UpdateLastExecution set value 0b
data modify block 29999999 1 3005 UpdateLastExecution set value 0b
data modify block 29999999 1 3006 UpdateLastExecution set value 0b

data modify block 29999999 2 3007 auto set value 0b
data modify block 29999999 2 3007 auto set value 1b

scoreboard players operation #str.str2ca.break PS.mem = $tps.avg PS.mem
execute if score $tps.avg PS.mem matches ..18 run scoreboard players operation #str.str2ca.break PS.mem /= $2 PS.const
scoreboard players set #str.str2ca.loop PS.mem 0