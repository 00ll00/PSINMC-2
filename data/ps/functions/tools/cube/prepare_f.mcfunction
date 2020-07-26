#as player
scoreboard players operation $math.sqrt.in PS.mem = @s PS.tools.vx.x
scoreboard players operation $math.sqrt.in PS.mem *= @s PS.tools.vx.x
scoreboard players operation #cube.calcu.temp PS.mem = @s PS.tools.vx.y
scoreboard players operation #cube.calcu.temp PS.mem *= @s PS.tools.vx.y
scoreboard players operation $math.sqrt.in PS.mem += #cube.calcu.temp PS.mem
scoreboard players operation #cube.calcu.temp PS.mem = @s PS.tools.vx.z
scoreboard players operation #cube.calcu.temp PS.mem *= @s PS.tools.vx.z
scoreboard players operation $math.sqrt.in PS.mem += #cube.calcu.temp PS.mem
function ps:math/sqrt/call
execute store result storage ps:players storage.data.tools.cube_last.whd[0] int 1 run scoreboard players get $math.sqrt.out PS.mem

scoreboard players operation $math.sqrt.in PS.mem = @s PS.tools.vy.x
scoreboard players operation $math.sqrt.in PS.mem *= @s PS.tools.vy.x
scoreboard players operation #cube.calcu.temp PS.mem = @s PS.tools.vy.y
scoreboard players operation #cube.calcu.temp PS.mem *= @s PS.tools.vy.y
scoreboard players operation $math.sqrt.in PS.mem += #cube.calcu.temp PS.mem
scoreboard players operation #cube.calcu.temp PS.mem = @s PS.tools.vy.z
scoreboard players operation #cube.calcu.temp PS.mem *= @s PS.tools.vy.z
scoreboard players operation $math.sqrt.in PS.mem += #cube.calcu.temp PS.mem
function ps:math/sqrt/call
execute store result storage ps:players storage.data.tools.cube_last.whd[1] int 1 run scoreboard players get $math.sqrt.out PS.mem

scoreboard players operation $math.sqrt.in PS.mem = @s PS.tools.vz.x
scoreboard players operation $math.sqrt.in PS.mem *= @s PS.tools.vz.x
scoreboard players operation #cube.calcu.temp PS.mem = @s PS.tools.vz.y
scoreboard players operation #cube.calcu.temp PS.mem *= @s PS.tools.vz.y
scoreboard players operation $math.sqrt.in PS.mem += #cube.calcu.temp PS.mem
scoreboard players operation #cube.calcu.temp PS.mem = @s PS.tools.vz.z
scoreboard players operation #cube.calcu.temp PS.mem *= @s PS.tools.vz.z
scoreboard players operation $math.sqrt.in PS.mem += #cube.calcu.temp PS.mem
function ps:math/sqrt/call
execute store result storage ps:players storage.data.tools.cube_last.whd[2] int 1 run scoreboard players get $math.sqrt.out PS.mem


execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.x,limit=1] eyes run tp @s ~ ~ ~ ~ ~
data modify storage ps:players storage.data.tools.cube_last.rotation_x set from entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] Rotation
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.y,limit=1] eyes run tp @s ~ ~ ~ ~ ~
data modify storage ps:players storage.data.tools.cube_last.rotation_y set from entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] Rotation
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.z,limit=1] eyes run tp @s ~ ~ ~ ~ ~
data modify storage ps:players storage.data.tools.cube_last.rotation_z set from entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] Rotation