#as player at base
function ps:control/components/gizmo/new_ruler

scoreboard players operation @e[tag=PS.ctrl.new] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.ctrl.new] PS.ctrl.id = $ctrl.id.max PS.ctrl.id
scoreboard players add $ctrl.id.max PS.ctrl.id 1
tag @e[tag=PS.ctrl.new] add PS.ctrl.ruler
tag @e[tag=PS.ctrl.new] add PS.ctrl.newed
tag @e[tag=PS.ctrl.new] remove PS.ctrl.new