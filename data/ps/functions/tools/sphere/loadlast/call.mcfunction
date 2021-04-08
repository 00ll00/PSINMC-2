#as player
data modify storage ps:players storage.data.tools.sphere set from storage ps:players storage.data.tools.sphere_last
execute store result score @s PS.tools.freemd run data get storage ps:players storage.data.tools.sphere.freemode
execute store result score @s PS.tools.hollow run data get storage ps:players storage.data.tools.sphere.hollow
execute store result score @s PS.tools.rev run data get storage ps:players storage.data.tools.sphere.rev
execute if data storage ps:players storage.data.tools.sphere{freemode:0b} run function ps:tools/sphere/loadlast/r
execute if data storage ps:players storage.data.tools.sphere{freemode:1b} run function ps:tools/sphere/loadlast/f
function ps:players/storage/markdirty