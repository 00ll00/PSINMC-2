#as player
#state -1:up 0:off 1:down 2:hold
scoreboard players set @s[scores={PS.key.rmb.s=1}] PS.key.rmb.s 2
scoreboard players set @s[scores={PS.key.rmb.s=-1}] PS.key.rmb.s 0
scoreboard players set @s[scores={PS.key.rmb=1..}] PS.key.rmb.cd 7
execute if entity @s[scores={PS.key.rmb=1..}] run function ps:key/rmb/raw
execute if entity @s[scores={PS.key.rmb.s=0,PS.key.rmb=1..}] run function ps:key/rmb/keydn
execute if entity @s[scores={PS.key.rmb.s=2,PS.key.rmb.cd=1..}] run function ps:key/rmb/keyhd
execute if entity @s[scores={PS.key.rmb.s=2,PS.key.rmb.cd=0}] run function ps:key/rmb/keyup

scoreboard players set @s PS.key.rmb 0
scoreboard players remove @s[scores={PS.key.rmb.cd=1..}] PS.key.rmb.cd 1
