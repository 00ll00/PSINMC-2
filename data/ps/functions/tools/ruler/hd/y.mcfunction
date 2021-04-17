#as player

scoreboard players operation #tools.ruler.y PS.mem = @s PS.focus.r.y2
scoreboard players operation #ruler.hd.temp PS.mem = @s PS.focus.r.y2
scoreboard players operation #ruler.hd.temp PS.mem *= $10 PS.const
execute store result entity @e[tag=PS.ctrl.ruler,tag=PS.ctrl.gizmo.e,tag=PS.players.belonging,limit=1] Pos[1] double 0.1 run scoreboard players add #ruler.hd.temp PS.mem 5
