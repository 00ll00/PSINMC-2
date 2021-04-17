#as player

scoreboard players set #tools.marker.s PS.mem 0
execute at 0-0110-5053-0-1 align xyz as @e[tag=PS.marker,dx=0,dy=0,dz=0] store success score #tools.marker.s PS.mem run kill @s
execute if score #tools.marker.s PS.mem matches 0 at 0-0110-5053-0-1 align xyz positioned ~.5 ~.5 ~.5 run function ps:tools/marker/new