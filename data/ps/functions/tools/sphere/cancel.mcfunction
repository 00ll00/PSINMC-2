#as player
data modify storage ps:players storage.data.tools.sphere.state set value "dn_new"
data modify storage ps:players storage.data.tools.sphere.showr set value 0
data modify storage ps:players storage.data.tools.sphere.postype set value 1
scoreboard players set $players.actionbar.showr PS.mem 0
scoreboard players set $players.actionbar.postype PS.mem 1

scoreboard players set @s PS.tools.ready 0

function ps:players/storage/markdirty

kill @e[tag=PS.ctrl.sphere,tag=PS.players.belonging]
kill @e[tag=PS.tools.sphere.stroke,tag=PS.players.belonging]