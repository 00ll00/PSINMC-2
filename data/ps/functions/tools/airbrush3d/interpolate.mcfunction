#as focus marker
scoreboard players add #tools.inter PS.mem 2
execute if score #tools.inter PS.mem >= $tools.size PS.mem as @a[tag=PS.players.op] if score @s PS.tools.rev matches 0 run function ps:tools/airbrush3d/draw
execute if score #tools.inter PS.mem >= $tools.size PS.mem as @a[tag=PS.players.op] if score @s PS.tools.rev matches 1 run function ps:tools/airbrush3d/draw_rev
execute positioned ~-1 ~-1 ~-1 store success score #tools.temp PS.mem if entity @s[dx=1,dy=1,dz=1]
execute if score #tools.temp PS.mem matches 0 positioned ^ ^ ^1 run function ps:tools/airbrush3d/interpolate