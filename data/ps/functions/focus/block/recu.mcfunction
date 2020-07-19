#as marker
scoreboard players add #focus.s PS.mem 1
scoreboard players set $focus.g PS.mem 0
execute if score $focus.attach PS.mem matches 1 align xyz if entity @e[tag=PS.focus.target,dx=0,dy=0,dz=0] run scoreboard players set $focus.g PS.mem 3
execute if score $focus.g PS.mem matches 0 run scoreboard players set $focus.g PS.mem 1
execute if score $focus.g PS.mem matches 1 if block ~ ~ ~ #ps:air run scoreboard players set $focus.g PS.mem 0
execute if score $focus.g PS.mem matches 0 if score #focus.s PS.mem >= #focus.dm PS.mem run function ps:focus/block/dist
execute unless score $focus.g PS.mem matches 0 align xyz run tp ~ ~ ~
execute if score $focus.g PS.mem matches 0 run function ps:focus/block/x/0