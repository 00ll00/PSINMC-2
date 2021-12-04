summon armor_stand ~ ~ ~ {"CustomName":'{"translate": "ps.tools.lsys", "bold": true, "color": "red"}',"CustomNameVisible":true,Invisible:true,Marker:true,Tags:["PS.menu", "PS.menu_", "PS.menu.focusable", "PS.players.owned", "PS.menu.main.tools_adv.lsys", "PS.menu.event.exit", "PS.menu.end"],ArmorItems:[{id:"minecraft:stone","Count":1b,"tag":{"path": ".main.tools_adv.lsys", "type": "item", "text": "{\"translate\": \"ps.tools.lsys\", \"bold\": true, \"color\": \"red\"}"}},{},{},{}]}
scoreboard players operation @e[tag=PS.menu_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.menu_] PS.menu.layer = @s PS.menu.layer
scoreboard players add @e[tag=PS.menu_] PS.menu.layer 1
tp @e[tag=PS.menu_] ~ ~ ~ ~ ~
tag @e[tag=PS.menu_] remove PS.menu_
