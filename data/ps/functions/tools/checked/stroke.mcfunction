#as stroke at @s
execute store result score #tools.checked.t2 PS.mem run data get entity @s Pos[0]
execute store result score #tools.checked.t1 PS.mem run data get entity @s Pos[1]
scoreboard players operation #tools.checked.t2 PS.mem += #tools.checked.t1 PS.mem
execute store result score #tools.checked.t1 PS.mem run data get entity @s Pos[2]
scoreboard players operation #tools.checked.t2 PS.mem += #tools.checked.t1 PS.mem
scoreboard players operation #tools.checked.t2 PS.mem %= $2 PS.const
execute if score #tools.checked.t2 PS.mem matches 0 run function ps:tools/checked/stroke_0
execute if score #tools.checked.t2 PS.mem matches 1 run function ps:tools/checked/stroke_1