#as player
summon armor_stand ~ ~ ~ {Tags:["PS.focus.cursor_","PS.focus.cursor","PS.players.owned","PS.players.belonging"],Marker:1b,Invisible:1b,Glowing:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b,tag:{CustomModelData:10100001}}]}
scoreboard players operation @e[tag=PS.focus.cursor_] PS.players.owner = @s PS.players.id
scoreboard players set @e[tag=PS.focus.cursor_] PS.PS.focus.get 0
tag @e[tag=PS.focus.cursor_] remove PS.focus.cursor_