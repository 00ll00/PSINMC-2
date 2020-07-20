#as player
execute if score @s PS.tools.whd.w matches 0 if score @s PS.tools.whd.h matches 0 if score @s PS.tools.whd.d matches 0 run function ps:tools/box/loadlast/call

scoreboard players set @s PS.tools.ready 1
data modify storage ps:players storage.data.tools.box.state set value "dn_old"
data modify storage ps:players storage.needwrite set value 1b