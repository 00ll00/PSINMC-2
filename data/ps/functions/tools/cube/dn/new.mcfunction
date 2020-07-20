#as player
function ps:focus/record1

execute at 0-0110-5053-0-1 run function ps:control/gizmo_cube/new
data modify storage ps:players storage.data.tools.cube.state set value "hd_xyz"

data modify storage ps:players storage.data.tools.cube.showwhd set value 1
data modify storage ps:players storage.data.tools.cube.postype set value 2
scoreboard players set $players.actionbar.showwhd PS.mem 1
scoreboard players set $players.actionbar.postype PS.mem 2

data modify storage ps:players storage.needwrite set value 1b