#as player

scoreboard players operation #tools.ruler.z PS.mem = @s PS.focus.r.z2
scoreboard players operation #ruler.hd.temp PS.mem = @s PS.focus.r.z2
scoreboard players operation #ruler.hd.temp PS.mem *= $10 PS.const
execute store result entity @e[tag=PS.ctrl.ruler,tag=PS.ctrl.gizmo.e,tag=PS.players.belonging,limit=1] Pos[2] double 0.1 run scoreboard players add #ruler.hd.temp PS.mem 5
