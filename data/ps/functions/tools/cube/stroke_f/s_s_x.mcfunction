#as stroke
scoreboard players operation #tools.cube.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.cube.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.cube.p.z PS.mem = @s PS.tools.p.z
scoreboard players add #tools.cube.p.x PS.mem 1

data modify entity @s Rotation set from storage ps:players storage.data.tools.cube_last.rotation_x
execute if score #tools.cube.p.x PS.mem <= #tools.cube.whd.w PS.mem rotated as @s positioned ^ ^ ^1 run function ps:tools/cube/stroke_f/new_xyz
