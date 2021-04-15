#as player
#input:
#   $focus.g
#   @s PS.tools.ftype

#output(vector):
#   @s PS.tools.wkpath
#   @s PS.tools.wka
#   @s PS.tools.wkp

#state -1:up 0:off 1:down 2:hold

scoreboard players set @s[scores={PS.key.rmb.s=1}] PS.key.rmb.s 2
scoreboard players set @s[scores={PS.key.rmb.s=-1}] PS.key.rmb.s 0
scoreboard players set @s[scores={PS.key.rmb=1..}] PS.key.rmb.cd 7

execute unless score @s PS.tools.ftype matches 3 run function ps:key/rmb/check_n
execute if score @s PS.tools.ftype matches 3 run function ps:key/rmb/check_v

scoreboard players set @s PS.key.rmb 0
scoreboard players remove @s[scores={PS.key.rmb.cd=1..}] PS.key.rmb.cd 1
