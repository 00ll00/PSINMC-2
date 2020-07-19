#as player
scoreboard players add #focus.d PS.mem 1
scoreboard players set #focus.temp PS.mem 0
execute if score $focus.attach PS.mem matches 1 align xyz if entity @e[tag=PS.focus.target,dx=0,dy=0,dz=0] run scoreboard players set #focus.temp PS.mem 3
execute if score #focus.temp PS.mem matches 0 store success score #focus.temp PS.mem if score #focus.d PS.mem < #focus.dm PS.mem if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute unless score #focus.temp PS.mem matches 1 as 0-0110-5053-0-1 run tp ~ ~ ~ 
execute if score #focus.temp PS.mem matches 1 positioned ^ ^ ^1 run function ps:focus/blocka/recu