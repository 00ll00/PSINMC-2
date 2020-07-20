#as player
data modify storage ps:players storage.data.tools.box.state set value "dn_new"
data modify storage ps:players storage.data.tools.box.showwhd set value 0
data modify storage ps:players storage.data.tools.box.postype set value 1
scoreboard players set $players.actionbar.showwhd PS.mem 0
scoreboard players set $players.actionbar.postype PS.mem 1

data modify storage ps:players storage.needwrite set value 1b

kill @e[tag=PS.ctrl.box,tag=PS.players.belonging]