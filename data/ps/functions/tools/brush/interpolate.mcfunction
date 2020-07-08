#as focus marker
execute as @a[tag=PS.players.op] run function ps:tools/brush/drawh
execute positioned ~-1 ~-1 ~-1 store success score #tools.temp PS.mem if entity @s[dx=1,dy=1,dz=1]
execute if score #tools.temp PS.mem matches 0 positioned ^ ^ ^1 run function ps:tools/brush/interpolate