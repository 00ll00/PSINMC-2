summon armor_stand ~ ~ ~ {"CustomName":'{"translate": "ps.tools.rectangle", "bold": true, "color": "gold"}',"CustomNameVisible":true,Invisible:true,Marker:true,Tags:["PS.","PS.menu", "PS.menu_", "PS.menu.focusable", "PS.players.owned", "PS.menu.main.tools.rectangle", "PS.menu.event.exit", "PS.menu.end"],ArmorItems:[{id:"minecraft:stone","Count":1b,"tag":{"path": ".main.tools.rectangle", "type": "item", "text": "{\"translate\": \"ps.tools.rectangle\", \"bold\": true, \"color\": \"gold\"}"}},{},{},{}]}
scoreboard players operation @e[tag=PS.menu_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.menu_] PS.menu.layer = @s PS.menu.layer
scoreboard players add @e[tag=PS.menu_] PS.menu.layer 1
tp @e[tag=PS.menu_] ~ ~ ~ ~ ~
tag @e[tag=PS.menu_] remove PS.menu_
