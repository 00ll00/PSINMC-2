#as player

scoreboard players operation $anchor.hdl.x PS.mem = @s PS.focus.x
scoreboard players operation $anchor.hdl.y PS.mem = @s PS.focus.y
scoreboard players operation $anchor.hdl.z PS.mem = @s PS.focus.z

execute as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka run function ps:path/anchor/movehdl/hdl2