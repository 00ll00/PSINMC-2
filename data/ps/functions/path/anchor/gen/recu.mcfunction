#as anchor
#input:
#   @s PS.path.id
#   @s PS.path.a.id
#   $path.gen.x1/y1/z1
#   $path.gen.x2/y2/z2
#   $path.gen.x3/y3/z3
#   $path.gen.x4/y4/z4
#   $math.bzr.l
#   $math.bzr.n = 1

scoreboard players operation $math.bzr.x1 PS.mem = $path.gen.x1 PS.mem
scoreboard players operation $math.bzr.y1 PS.mem = $path.gen.y1 PS.mem
scoreboard players operation $math.bzr.z1 PS.mem = $path.gen.z1 PS.mem
scoreboard players operation $math.bzr.x2 PS.mem = $path.gen.x2 PS.mem
scoreboard players operation $math.bzr.y2 PS.mem = $path.gen.y2 PS.mem
scoreboard players operation $math.bzr.z2 PS.mem = $path.gen.z2 PS.mem
scoreboard players operation $math.bzr.x3 PS.mem = $path.gen.x3 PS.mem
scoreboard players operation $math.bzr.y3 PS.mem = $path.gen.y3 PS.mem
scoreboard players operation $math.bzr.z3 PS.mem = $path.gen.z3 PS.mem
scoreboard players operation $math.bzr.x4 PS.mem = $path.gen.x4 PS.mem
scoreboard players operation $math.bzr.y4 PS.mem = $path.gen.y4 PS.mem
scoreboard players operation $math.bzr.z4 PS.mem = $path.gen.z4 PS.mem

function ps:math/bezier3/call

summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["PS.","PS.path.p_","PS.path","PS.path.p","PS.path.working","PS.focus.target"]}

execute as @e[tag=PS.path.p_] run function ps:path/anchor/gen/initp
scoreboard players operation @e[tag=PS.path.p_] PS.path.id = @s PS.path.id
scoreboard players operation @e[tag=PS.path.p_] PS.path.a.id = @s PS.path.a.id

tag @e[tag=PS.path.p_] remove PS.path.p_

scoreboard players add $math.bzr.n PS.mem 1
execute if score $math.bzr.n PS.mem < $math.bzr.l PS.mem run function ps:path/anchor/gen/recu