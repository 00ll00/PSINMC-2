#as player

function ps:focus/record1

kill @e[tag=PS.ctrl.ruler,tag=PS.players.belonging]
execute at 0-0110-5053-0-1 align xyz positioned ~.5 ~.5 ~.5 run function ps:control/gizmo_ruler/new