#as player

function ps:tools/cube/write

data modify storage ps:players storage.data.tools.cube_last set from storage ps:players storage.data.tools.cube

execute if score @s PS.tools.freemd matches 0 run function ps:tools/cube/prepare_r
execute if score @s PS.tools.freemd matches 1 run function ps:tools/cube/prepare_f

data modify storage ps:players storage.data.tools.cube.state set value "build"