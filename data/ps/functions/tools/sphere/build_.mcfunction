#as player
function ps:tools/sphere/write

data modify storage ps:players storage.data.tools.sphere_last set from storage ps:players storage.data.tools.sphere

execute if score @s PS.tools.freemd matches 0 run function ps:tools/sphere/prepare_r
execute if score @s PS.tools.freemd matches 1 run function ps:tools/sphere/prepare_f

tag @e[tag=PS.tools.sphere.stroke,tag=PS.players.belonging] add PS.main.tick_life
data modify storage ps:players storage.data.tools.sphere.state set value "build"