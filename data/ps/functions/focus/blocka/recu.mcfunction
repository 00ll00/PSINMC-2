#as player
scoreboard players add #focus.d PS.mem 1
scoreboard players set #focus.temp PS.mem 0
execute store success score #focus.temp PS.mem if score #focus.d PS.mem < #focus.dm PS.mem if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute if score #focus.temp PS.mem matches 0 as 0-0110-5053-0-1 run tp ~ ~ ~ 
execute if score #focus.temp PS.mem matches 1 positioned ^ ^ ^1 run function ps:focus/blocka/recu