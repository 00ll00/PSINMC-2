summon armor_stand ~ ~ ~ {"CustomName":'{"translate": "ps.tools.smooth", "bold": true, "color": "blue"}',"CustomNameVisible":true,Invisible:true,Marker:true,Tags:["PS.menu", "PS.menu_", "PS.menu.focusable", "PS.players.owned", "PS.menu.main.tools_3d.smooth", "PS.menu.event.exit", "PS.menu.end"],ArmorItems:[{id:"minecraft:stone","Count":1b,"tag":{"path": ".main.tools_3d.smooth", "type": "item", "text": "{\"translate\": \"ps.tools.smooth\", \"bold\": true, \"color\": \"blue\"}"}},{},{},{}]}
scoreboard players operation @e[tag=PS.menu_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.menu_] PS.menu.layer = @s PS.menu.layer
scoreboard players add @e[tag=PS.menu_] PS.menu.layer 1
tp @e[tag=PS.menu_] ~ ~ ~ ~ ~
tag @e[tag=PS.menu_] remove PS.menu_
