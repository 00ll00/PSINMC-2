#as player

execute as @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.x,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.o,limit=1] run function ps:math/vect/unitv/call
scoreboard players operation $math.mat.a.1.1 PS.mem = $math.vect.unitv.x PS.mem
scoreboard players operation $math.mat.a.2.1 PS.mem = $math.vect.unitv.y PS.mem
scoreboard players operation $math.mat.a.3.1 PS.mem = $math.vect.unitv.z PS.mem

execute as @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.y,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.o,limit=1] run function ps:math/vect/unitv/call
scoreboard players operation $math.mat.a.1.2 PS.mem = $math.vect.unitv.x PS.mem
scoreboard players operation $math.mat.a.2.2 PS.mem = $math.vect.unitv.y PS.mem
scoreboard players operation $math.mat.a.3.2 PS.mem = $math.vect.unitv.z PS.mem

execute as @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.o,limit=1] at @s facing entity @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.z,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.o,limit=1] run function ps:math/vect/unitv/call
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

execute store result storage ps:players storage.data.tools.sphere_last.inv.1.1 int 1 run scoreboard players get $math.mat.adj.1.1 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.1.2 int 1 run scoreboard players get $math.mat.adj.1.2 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.1.3 int 1 run scoreboard players get $math.mat.adj.1.3 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.2.1 int 1 run scoreboard players get $math.mat.adj.2.1 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.2.2 int 1 run scoreboard players get $math.mat.adj.2.2 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.2.3 int 1 run scoreboard players get $math.mat.adj.2.3 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.3.1 int 1 run scoreboard players get $math.mat.adj.3.1 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.3.2 int 1 run scoreboard players get $math.mat.adj.3.2 PS.mem
execute store result storage ps:players storage.data.tools.sphere_last.inv.3.3 int 1 run scoreboard players get $math.mat.adj.3.3 PS.mem

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
execute store result storage ps:players storage.data.tools.sphere_last.whd[0] int 1 run scoreboard players get @s PS.tools.whd.w
execute store result storage ps:players storage.data.tools.sphere_last.whd[1] int 1 run scoreboard players get @s PS.tools.whd.h
execute store result storage ps:players storage.data.tools.sphere_last.whd[2] int 1 run scoreboard players get @s PS.tools.whd.d

scoreboard players operation @s PS.tools.r = @s PS.tools.whd.w
scoreboard players operation @s PS.tools.r < @s PS.tools.whd.h
scoreboard players operation @s PS.tools.r < @s PS.tools.whd.d
execute store result storage ps:players storage.data.tools.sphere_last.r int 1 run scoreboard players get @s PS.tools.r

execute unless data storage ps:players storage.data.tools.sphere{state:"pause"} if data storage ps:players storage.data.tools.sphere{startAt:"x"} run function ps:tools/sphere/prepare_f_x
execute unless data storage ps:players storage.data.tools.sphere{state:"pause"} if data storage ps:players storage.data.tools.sphere{startAt:"y"} run function ps:tools/sphere/prepare_f_y
execute unless data storage ps:players storage.data.tools.sphere{state:"pause"} if data storage ps:players storage.data.tools.sphere{startAt:"z"} run function ps:tools/sphere/prepare_f_z