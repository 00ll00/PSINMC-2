#as marker at marker
execute if score $focus.f PS.mem matches 1 run tp ~.9999 ~ ~

scoreboard players operation #focus.temp PS.mem = $focus.sx PS.mem
execute if score $focus.f PS.mem matches 1 run scoreboard players add #focus.temp PS.mem 1
scoreboard players operation #focus.temp PS.mem *= $focus.block.const2 PS.const
scoreboard players operation #focus.temp PS.mem -= $focus.bx PS.mem
scoreboard players operation #focus.temp PS.mem /= $focus.dx PS.mem

scoreboard players operation #focus.temp1 PS.mem = #focus.temp PS.mem
scoreboard players operation #focus.temp1 PS.mem *= $focus.dy PS.mem
scoreboard players operation #focus.temp1 PS.mem += $focus.by PS.mem
scoreboard players operation #focus.temp1 PS.mem /= $focus.block.const PS.const
scoreboard players operation #focus.temp1 PS.mem %= $focus.block.const PS.const
execute store result score #focus.temp2 PS.mem run data get entity 0-0110-5053-0-1 Pos[1] 1290
scoreboard players operation #focus.temp2 PS.mem += #focus.temp1 PS.mem
execute store result entity 0-0110-5053-0-1 Pos[1] double 0.00077519 run scoreboard players get #focus.temp2 PS.mem

scoreboard players operation #focus.temp1 PS.mem = #focus.temp PS.mem
scoreboard players operation #focus.temp1 PS.mem *= $focus.dz PS.mem
scoreboard players operation #focus.temp1 PS.mem += $focus.bz PS.mem
scoreboard players operation #focus.temp1 PS.mem /= $focus.block.const PS.const
scoreboard players operation #focus.temp1 PS.mem %= $focus.block.const PS.const
execute store result score #focus.temp2 PS.mem run data get entity 0-0110-5053-0-1 Pos[2] 1290
scoreboard players operation #focus.temp2 PS.mem += #focus.temp1 PS.mem
execute store result entity 0-0110-5053-0-1 Pos[2] double 0.00077519 run scoreboard players get #focus.temp2 PS.mem