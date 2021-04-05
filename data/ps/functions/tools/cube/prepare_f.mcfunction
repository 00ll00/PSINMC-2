#as player

execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.x,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] run function ps:math/vect/unitv/call
scoreboard players operation $math.mat.a.1.1 PS.mem = $math.vect.unitv.x PS.mem
scoreboard players operation $math.mat.a.2.1 PS.mem = $math.vect.unitv.y PS.mem
scoreboard players operation $math.mat.a.3.1 PS.mem = $math.vect.unitv.z PS.mem

execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.y,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] run function ps:math/vect/unitv/call
scoreboard players operation $math.mat.a.1.2 PS.mem = $math.vect.unitv.x PS.mem
scoreboard players operation $math.mat.a.2.2 PS.mem = $math.vect.unitv.y PS.mem
scoreboard players operation $math.mat.a.3.2 PS.mem = $math.vect.unitv.z PS.mem

execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.z,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,limit=1] run function ps:math/vect/unitv/call
scoreboard players operation $math.mat.a.1.3 PS.mem = $math.vect.unitv.x PS.mem
scoreboard players operation $math.mat.a.2.3 PS.mem = $math.vect.unitv.y PS.mem
scoreboard players operation $math.mat.a.3.3 PS.mem = $math.vect.unitv.z PS.mem

function ps:math/mat/adjoint_mat/33

function ps:math/mat/determinant/33

scoreboard players operation $math.mat.adj.1.1 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.1.2 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.1.3 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.2.1 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.2.2 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.2.3 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.3.1 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.3.2 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.adj.3.3 PS.mem *= $1000 PS.const

scoreboard players operation $math.mat.adj.1.1 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.1.2 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.1.3 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.2.1 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.2.2 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.2.3 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.3.1 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.3.2 PS.mem /= $math.mat.det.o PS.mem
scoreboard players operation $math.mat.adj.3.3 PS.mem /= $math.mat.det.o PS.mem

execute store result storage ps:players storage.data.tools.cube_last.adj.1.1 int 1 run scoreboard players get $math.mat.adj.1.1 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.1.2 int 1 run scoreboard players get $math.mat.adj.1.2 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.1.3 int 1 run scoreboard players get $math.mat.adj.1.3 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.2.1 int 1 run scoreboard players get $math.mat.adj.2.1 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.2.2 int 1 run scoreboard players get $math.mat.adj.2.2 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.2.3 int 1 run scoreboard players get $math.mat.adj.2.3 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.3.1 int 1 run scoreboard players get $math.mat.adj.3.1 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.3.2 int 1 run scoreboard players get $math.mat.adj.3.2 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.3.3 int 1 run scoreboard players get $math.mat.adj.3.3 PS.mem

scoreboard players operation @s PS.tools.vx.x *= $1000 PS.const
scoreboard players operation @s PS.tools.vx.y *= $1000 PS.const
scoreboard players operation @s PS.tools.vx.z *= $1000 PS.const
scoreboard players operation @s PS.tools.vy.x *= $1000 PS.const
scoreboard players operation @s PS.tools.vy.y *= $1000 PS.const
scoreboard players operation @s PS.tools.vy.z *= $1000 PS.const
scoreboard players operation @s PS.tools.vz.x *= $1000 PS.const
scoreboard players operation @s PS.tools.vz.y *= $1000 PS.const
scoreboard players operation @s PS.tools.vz.z *= $1000 PS.const
function ps:tools/com/getvw
function ps:tools/com/getvh
function ps:tools/com/getvd
execute store result storage ps:players storage.data.tools.cube_last.whd[0] int 1 run scoreboard players get @s PS.tools.whd.w
execute store result storage ps:players storage.data.tools.cube_last.whd[1] int 1 run scoreboard players get @s PS.tools.whd.h
execute store result storage ps:players storage.data.tools.cube_last.whd[2] int 1 run scoreboard players get @s PS.tools.whd.d

execute unless data storage ps:players storage.data.tools.cube{state:"pause"} at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,tag=PS.players.belonging] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.x 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.y 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.z 0
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_