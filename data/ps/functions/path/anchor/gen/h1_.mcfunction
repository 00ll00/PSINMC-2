#as anchor

function ps:path/anchor/gen/getright

scoreboard players operation #path.anchor.genid PS.mem = @s PS.path.a.id
scoreboard players remove #path.anchor.genid PS.mem 1
execute as @e[tag=PS.path.p,tag=!PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.genid PS.mem run kill @s
execute as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.genid PS.mem run function ps:path/anchor/gen/getleft

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
function ps:math/bezier3/guesslen

scoreboard players set $math.bzr.n PS.mem 1
execute as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.genid PS.mem run function ps:path/anchor/gen/recu