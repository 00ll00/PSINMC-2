#as stroke
#function ps:tools/com/getshape
execute store result score #tools.airbrush3d.temp PS.mem run data get entity @s UUID[0]
scoreboard players operation #tools.airbrush3d.temp PS.mem %= $16 PS.const
execute if score #tools.airbrush3d.temp PS.mem < $color.a PS.mem run setblock ~ ~ ~ minecraft:air