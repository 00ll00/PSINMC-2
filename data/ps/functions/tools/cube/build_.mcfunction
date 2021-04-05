#as player

function ps:tools/cube/write

data modify storage ps:players storage.data.tools.cube_last set from storage ps:players storage.data.tools.cube

execute if score @s PS.tools.freemd matches 0 run function ps:tools/cube/prepare_r
execute if score @s PS.tools.freemd matches 1 run function ps:tools/cube/prepare_f

tag @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging] add PS.main.tick_life
data modify storage ps:players storage.data.tools.cube.state set value "build"