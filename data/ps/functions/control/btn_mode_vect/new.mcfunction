#as player at base
function ps:control/components/button/new

tag @e[tag=PS.ctrl.new] add PS.ctrl.active
execute as @e[tag=PS.ctrl.new,tag=PS.ctrl.btn.b] run function ps:control/btn_mode_vect/refresh
tag @e[tag=PS.ctrl.active] remove PS.ctrl.active
tag @e[tag=PS.ctrl.new] add PS.ctrl.mode.vect
scoreboard players operation @e[tag=PS.ctrl.new] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.ctrl.new] PS.ctrl.id = $ctrl.id.max PS.ctrl.id
scoreboard players add $ctrl.id.max PS.ctrl.id 1
tag @e[tag=PS.ctrl.new] add PS.ctrl.newed
tag @e[tag=PS.ctrl.new] remove PS.ctrl.new