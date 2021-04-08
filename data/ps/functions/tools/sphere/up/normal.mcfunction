#as player
execute if score @s PS.tools.r matches 0 run function ps:tools/sphere/loadlast/call

execute if data storage ps:players storage.data.tools.sphere{state:"hd_f_x"} run data modify storage ps:players storage.data.tools.sphere.startAt set value "x"
execute if data storage ps:players storage.data.tools.sphere{state:"hd_f_y"} run data modify storage ps:players storage.data.tools.sphere.startAt set value "y"
execute if data storage ps:players storage.data.tools.sphere{state:"hd_f_z"} run data modify storage ps:players storage.data.tools.sphere.startAt set value "z"

scoreboard players set @s PS.tools.ready 1
data modify storage ps:players storage.data.tools.sphere.state set value "dn_old"
function ps:players/storage/markdirty