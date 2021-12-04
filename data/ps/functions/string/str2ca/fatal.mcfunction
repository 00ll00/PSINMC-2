function ps:string/str2ca/sw_off

scoreboard players set $str.str2ca.busy PS.mem 0

data modify block 29999999 1 3007 Command set from storage ps:str str2ca.callback
data modify block 29999999 1 3007 auto set value 0b
data modify block 29999999 1 3007 auto set value 1b

data modify storage ps:str str2ca.callback set value ""