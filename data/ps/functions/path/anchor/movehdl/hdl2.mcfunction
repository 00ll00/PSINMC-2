#as anchor
#input: $anchor.hdl.x/y/z

scoreboard players operation @s PS.path.h2.x = $anchor.hdl.x PS.mem
scoreboard players operation @s PS.path.h2.y = $anchor.hdl.y PS.mem
scoreboard players operation @s PS.path.h2.z = $anchor.hdl.z PS.mem
scoreboard players operation @s PS.path.h2.x -= @s PS.path.p.x
scoreboard players operation @s PS.path.h2.y -= @s PS.path.p.y
scoreboard players operation @s PS.path.h2.z -= @s PS.path.p.z

function ps:path/anchor/refreshhdl2