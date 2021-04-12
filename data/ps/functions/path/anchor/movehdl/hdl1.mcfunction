#as anchor
#input: $anchor.hdl.x/y/z

scoreboard players operation @s PS.path.h1.x = $anchor.hdl.x PS.mem
scoreboard players operation @s PS.path.h1.y = $anchor.hdl.y PS.mem
scoreboard players operation @s PS.path.h1.z = $anchor.hdl.z PS.mem
scoreboard players operation @s PS.path.h1.x -= @s PS.path.p.x
scoreboard players operation @s PS.path.h1.y -= @s PS.path.p.y
scoreboard players operation @s PS.path.h1.z -= @s PS.path.p.z

function ps:path/anchor/refreshhdl1