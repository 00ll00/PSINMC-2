function ps:string/str2ca/sw_off

#function getchar/call
data modify storage ps:str str2ca.out append value 0
execute store result storage ps:str str2ca.out[-1] int 1 run scoreboard players get #str.str2ca.now PS.mem

scoreboard players set $str.str2ca.suc PS.mem 1
scoreboard players set $str.str2ca.busy PS.mem 0

data modify block 29999999 1 3007 Command set from storage ps:str str2ca.callback
data modify block 29999999 1 3007 auto set value 0b
data modify block 29999999 1 3007 auto set value 1b

data modify storage ps:str str2ca.callback set value ""