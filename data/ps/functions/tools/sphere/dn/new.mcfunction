#as player
function ps:focus/record1

scoreboard players set @s PS.tools.freemd 0

execute at 0-0110-5053-0-1 run function ps:control/gizmo_sphere/new
data modify storage ps:players storage.data.tools.sphere.state set value "hd_r"

data modify storage ps:players storage.data.tools.sphere.showwhd set value 1
data modify storage ps:players storage.data.tools.sphere.postype set value 2
scoreboard players set $players.actionbar.showwhd PS.mem 1
scoreboard players set $players.actionbar.postype PS.mem 2

function ps:players/storage/markdirty