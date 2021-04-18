#as player
scoreboard players set @s PS.menu.show 1
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.menu.center","PS.menu","PS.menu_","PS.players.owned","PS.players.belonging"],Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=PS.menu_] PS.players.owner = @s PS.players.id
execute at @s rotated as @s anchored eyes positioned ^ ^ ^ as @e[tag=PS.menu_] run tp @s ^ ^ ^6 ~ ~
tag @e[tag=PS.menu_] remove PS.menu_

scoreboard players set @s PS.key.lmb.on 1

execute if score @s PS.tools.type matches 1.. as @e[tag=PS.menu.center,tag=PS.players.belonging] at @s positioned ^ ^1.5 ^ run tp ~ ~ ~
execute as @e[tag=PS.menu.center,tag=PS.players.belonging] at @s run function ps:menu/main/show
execute if score @s PS.tools.type matches 1.. at @e[tag=PS.menu.center,tag=PS.players.belonging] run function ps:menu/attr/call

#nested controls
tag @e[tag=PS.ctrl.newed] add PS.menu
tag @e[tag=PS.ctrl.newed] add PS.menu.end
tag @e[tag=PS.ctrl.newed,tag=PS.ctrl.focusable] add PS.menu.focusable
scoreboard players set @e[tag=PS.ctrl.newed] PS.menu.layer 1
tag @e[tag=PS.ctrl.newed] remove PS.ctrl.newed