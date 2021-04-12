#as player

execute store result score @s PS.tools.wkpath run scoreboard players add $path.id.max PS.path.id 1
scoreboard players set @s PS.tools.wka 1
scoreboard players set $path.a.id PS.mem 1
execute at 0-0110-5053-0-1 align xyz positioned ~.5 ~.5 ~.5 run function ps:path/anchor/new
execute as @e[tag=PS.path.working,tag=PS.path.a] at @s run function ps:path/anchor/gethandles

data modify storage ps:players storage.data.tools.pen.state set value "hd_hdl2-1"
function ps:players/storage/markdirty