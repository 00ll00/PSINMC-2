#as players

function ps:focus/record2
function ps:tools/com/getwhd
scoreboard players operation #tools.ruler.w PS.mem = @s PS.tools.whd.w
scoreboard players operation #tools.ruler.h PS.mem = @s PS.tools.whd.h
scoreboard players operation #tools.ruler.d PS.mem = @s PS.tools.whd.d
scoreboard players operation #tools.ruler.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #tools.ruler.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #tools.ruler.z PS.mem = @s PS.focus.r.z1
execute if score #tools.ruler.w PS.mem matches ..-1 run scoreboard players operation #tools.ruler.w PS.mem *= $-1 PS.const
execute if score #tools.ruler.h PS.mem matches ..-1 run scoreboard players operation #tools.ruler.h PS.mem *= $-1 PS.const
execute if score #tools.ruler.d PS.mem matches ..-1 run scoreboard players operation #tools.ruler.d PS.mem *= $-1 PS.const

scoreboard players operation #tools.ruler.temp PS.mem = #tools.ruler.w PS.mem
scoreboard players operation #tools.ruler.temp PS.mem > #tools.ruler.h PS.mem
scoreboard players operation #tools.ruler.temp PS.mem > #tools.ruler.d PS.mem

execute at @e[tag=PS.ctrl.ruler,tag=PS.ctrl.gizmo.s,tag=PS.players.belonging,limit=1] align xyz positioned ~.5 ~.5 ~.5 run tp @e[tag=PS.ctrl.ruler,tag=PS.ctrl.gizmo.e,tag=PS.players.belonging] ~ ~ ~

execute if score #tools.ruler.temp PS.mem = #tools.ruler.w PS.mem run function ps:tools/ruler/hd/x
execute if score #tools.ruler.temp PS.mem = #tools.ruler.h PS.mem run function ps:tools/ruler/hd/y
execute if score #tools.ruler.temp PS.mem = #tools.ruler.d PS.mem run function ps:tools/ruler/hd/z

scoreboard players operation @s PS.focus.r.x2 = #tools.ruler.x PS.mem
scoreboard players operation @s PS.focus.r.y2 = #tools.ruler.y PS.mem
scoreboard players operation @s PS.focus.r.z2 = #tools.ruler.z PS.mem

function ps:tools/com/getwhd
function ps:tools/com/getr