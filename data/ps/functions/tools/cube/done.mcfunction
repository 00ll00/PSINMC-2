#as player
data modify storage ps:players storage.data.tools.cube.state set value "dn_new"
data modify storage ps:players storage.data.tools.cube.showwhd set value 0
data modify storage ps:players storage.data.tools.cube.postype set value 1
scoreboard players set $players.actionbar.showwhd PS.mem 0
scoreboard players set $players.actionbar.postype PS.mem 1

scoreboard players set @s PS.tools.ready 0

data modify storage ps:players storage.needwrite set value 1b

kill @e[tag=PS.ctrl.cube,tag=PS.players.belonging]

