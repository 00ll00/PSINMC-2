#as player

scoreboard players operation $math.mat.a.1.1 PS.mem = @s PS.tools.vx.x
scoreboard players operation $math.mat.a.1.2 PS.mem = @s PS.tools.vy.x
scoreboard players operation $math.mat.a.1.3 PS.mem = @s PS.tools.vz.x
scoreboard players operation $math.mat.a.2.1 PS.mem = @s PS.tools.vx.y
scoreboard players operation $math.mat.a.2.2 PS.mem = @s PS.tools.vy.y
scoreboard players operation $math.mat.a.2.3 PS.mem = @s PS.tools.vz.y
scoreboard players operation $math.mat.a.3.1 PS.mem = @s PS.tools.vx.z
scoreboard players operation $math.mat.a.3.2 PS.mem = @s PS.tools.vy.z
scoreboard players operation $math.mat.a.3.3 PS.mem = @s PS.tools.vz.z

scoreboard players operation $math.mat.a.1.1 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.1.2 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.1.3 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.2.1 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.2.2 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.2.3 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.3.1 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.3.2 PS.mem *= $1000 PS.const
scoreboard players operation $math.mat.a.3.3 PS.mem *= $1000 PS.const

function ps:math/mat/adjoint_mat/33

execute store result storage ps:players storage.data.tools.cube_last.adj.1.1 int 1 run scoreboard players get $math.mat.adj.1.1 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.1.2 int 1 run scoreboard players get $math.mat.adj.1.2 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.1.3 int 1 run scoreboard players get $math.mat.adj.1.3 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.2.1 int 1 run scoreboard players get $math.mat.adj.2.1 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.2.2 int 1 run scoreboard players get $math.mat.adj.2.2 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.2.3 int 1 run scoreboard players get $math.mat.adj.2.3 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.3.1 int 1 run scoreboard players get $math.mat.adj.3.1 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.3.2 int 1 run scoreboard players get $math.mat.adj.3.2 PS.mem
execute store result storage ps:players storage.data.tools.cube_last.adj.3.3 int 1 run scoreboard players get $math.mat.adj.3.3 PS.mem

function ps:math/mat/determinant/33
execute store result storage ps:players storage.data.tools.cube_last.det int 1 run scoreboard players get $math.mat.det.o PS.mem

execute unless data storage ps:players storage.data.tools.cube{state:"pause"} at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.x,tag=PS.players.belonging] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.x = @s PS.tools.vx.x
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.y = @s PS.tools.vx.y
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.z = @s PS.tools.vx.z
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.main.life 1
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_

execute unless data storage ps:players storage.data.tools.cube{state:"pause"} at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.y,tag=PS.players.belonging] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.x = @s PS.tools.vy.x
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.y = @s PS.tools.vy.y
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.z = @s PS.tools.vy.z
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.main.life 1
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_

execute unless data storage ps:players storage.data.tools.cube{state:"pause"} at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.z,tag=PS.players.belonging] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.x = @s PS.tools.vz.x
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.y = @s PS.tools.vz.y
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.z = @s PS.tools.vz.z
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.main.life 1
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_