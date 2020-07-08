#as player
scoreboard players operation @s PS.color.r1 >< @s PS.color.r2
scoreboard players operation @s PS.color.g1 >< @s PS.color.g2
scoreboard players operation @s PS.color.b1 >< @s PS.color.b2
scoreboard players operation @s PS.color.a1 >< @s PS.color.a2
scoreboard players operation $ctrl.clrpk.r1 PS.mem = @s PS.color.r1
scoreboard players operation $ctrl.clrpk.g1 PS.mem = @s PS.color.g1
scoreboard players operation $ctrl.clrpk.b1 PS.mem = @s PS.color.b1
scoreboard players operation $ctrl.clrpk.a1 PS.mem = @s PS.color.a1
scoreboard players operation $ctrl.clrpk.r2 PS.mem = @s PS.color.r2
scoreboard players operation $ctrl.clrpk.g2 PS.mem = @s PS.color.g2
scoreboard players operation $ctrl.clrpk.b2 PS.mem = @s PS.color.b2
scoreboard players operation $ctrl.clrpk.a2 PS.mem = @s PS.color.a2
execute as @e[tag=PS.players.belonging,tag=PS.ctrl.clrpk] run tag @s add PS.ctrl.active
function ps:control/components/clrpicker/refresh
tag @e[tag=PS.ctrl.active] remove PS.ctrl.active