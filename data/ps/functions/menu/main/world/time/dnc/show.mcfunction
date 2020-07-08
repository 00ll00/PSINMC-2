summon armor_stand ~ ~ ~ {"CustomName":'{"translate": "ps.menu.main.world.time.dnc", "bold": true}',"CustomNameVisible":true,Invisible:true,Marker:true,Tags:["PS.menu", "PS.menu_", "PS.menu.focusable", "PS.players.owned", "PS.menu.main.world.time.dnc", "PS.menu.event.mmi"],ArmorItems:[{id:"minecraft:stone","Count":1b,"tag":{"path": ".main.world.time.dnc", "type": "item", "text": "{\"translate\": \"ps.menu.main.world.time.dnc\", \"bold\": true}"}},{},{},{}]}
scoreboard players operation @e[tag=PS.menu_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.menu_] PS.menu.layer = @s PS.menu.layer
scoreboard players add @e[tag=PS.menu_] PS.menu.layer 1
tp @e[tag=PS.menu_] ~ ~ ~ ~ ~
tag @e[tag=PS.menu_] remove PS.menu_
