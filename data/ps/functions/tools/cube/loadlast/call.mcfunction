#as player
data modify storage ps:players storage.data.tools.cube set from storage ps:players storage.data.tools.cube_last
execute store result score @s PS.tools.freemd run data get storage ps:players storage.data.tools.cube.freemode
execute store result score @s PS.tools.hollow run data get storage ps:players storage.data.tools.cube.hollow
execute store result score @s PS.tools.rev run data get storage ps:players storage.data.tools.cube.rev
execute if data storage ps:players storage.data.tools.cube{freemode:0b} run function ps:tools/cube/loadlast/r
execute if data storage ps:players storage.data.tools.cube{freemode:1b} run function ps:tools/cube/loadlast/f
function ps:players/storage/markdirty