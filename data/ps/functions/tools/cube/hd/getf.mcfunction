#as player
#output:
#   #cube.hdf.rx/y/z    *10
#   #cube.hdf.vx.x/y/z  *10
#   #cube.hdf.vy.x/y/z  *10
#   #cube.hdf.vz.x/y/z  *10

scoreboard players operation #cube.hdf.rx PS.mem = @s PS.focus.r.x1
scoreboard players operation #cube.hdf.ry PS.mem = @s PS.focus.r.y1
scoreboard players operation #cube.hdf.rz PS.mem = @s PS.focus.r.z1
scoreboard players operation #cube.hdf.rx PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.ry PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.rz PS.mem *= $10 PS.const
scoreboard players add #cube.hdf.rx PS.mem 5
scoreboard players add #cube.hdf.ry PS.mem 5
scoreboard players add #cube.hdf.rz PS.mem 5

scoreboard players operation #cube.hdf.vx.x PS.mem = @s PS.tools.vx.x
scoreboard players operation #cube.hdf.vx.y PS.mem = @s PS.tools.vx.y
scoreboard players operation #cube.hdf.vx.z PS.mem = @s PS.tools.vx.z
scoreboard players operation #cube.hdf.vy.x PS.mem = @s PS.tools.vy.x
scoreboard players operation #cube.hdf.vy.y PS.mem = @s PS.tools.vy.y
scoreboard players operation #cube.hdf.vy.z PS.mem = @s PS.tools.vy.z
scoreboard players operation #cube.hdf.vz.x PS.mem = @s PS.tools.vz.x
scoreboard players operation #cube.hdf.vz.y PS.mem = @s PS.tools.vz.y
scoreboard players operation #cube.hdf.vz.z PS.mem = @s PS.tools.vz.z

scoreboard players operation #cube.hdf.vx.x PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vx.y PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vx.z PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vy.x PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vy.y PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vy.z PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vz.x PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vz.y PS.mem *= $10 PS.const
scoreboard players operation #cube.hdf.vz.z PS.mem *= $10 PS.const