#as player
execute if score @s PS.tools.whd.w matches 0 if score @s PS.tools.whd.h matches 0 if score @s PS.tools.whd.d matches 0 run function ps:tools/cube/loadlast/call

scoreboard players set @s PS.tools.ready 1
data modify storage ps:players storage.data.tools.cube.state set value "dn_old"
function ps:players/storage/markdirty