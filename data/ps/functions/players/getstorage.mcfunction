#as player
summon armor_stand 29999984 0 2992 {Tags:["PS.players.data","PS.players.data_","PS.players.owned","PS.players.belonging"],Marker:1b,Invisible:1b,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{PS_players_data:{tools:{box:{state:"dn_new",showwhd:0b,postype:1b}}}}},{},{},{}]}
scoreboard players operation @e[tag=PS.players.data_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.players.data_] remove PS.players.data_