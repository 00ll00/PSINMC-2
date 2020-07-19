#as player
scoreboard players set #focus.dist.temp PS.mem 0
execute if score #focus.dist.temp PS.mem matches 0 store success score #focus.dist.temp PS.mem if score @s PS.focus.max matches 0..29 run scoreboard players set @s PS.focus.max 50
execute if score #focus.dist.temp PS.mem matches 0 store success score #focus.dist.temp PS.mem if score @s PS.focus.max matches 30..69 run scoreboard players set @s PS.focus.max 100
execute if score #focus.dist.temp PS.mem matches 0 store success score #focus.dist.temp PS.mem if score @s PS.focus.max matches 70..119 run scoreboard players set @s PS.focus.max 150
execute if score #focus.dist.temp PS.mem matches 0 store success score #focus.dist.temp PS.mem if score @s PS.focus.max matches 120.. run scoreboard players set @s PS.focus.max 15