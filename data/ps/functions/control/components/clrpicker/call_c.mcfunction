#as focused component
execute store success score @s PS.tools.clr if score @s PS.tools.clr matches 0
scoreboard players operation $ctrl.clrpk.r1 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.r
scoreboard players operation $ctrl.clrpk.g1 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.g
scoreboard players operation $ctrl.clrpk.b1 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.b
scoreboard players operation $ctrl.clrpk.a1 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.a
scoreboard players operation $ctrl.clrpk.r2 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.r
scoreboard players operation $ctrl.clrpk.g2 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.g
scoreboard players operation $ctrl.clrpk.b2 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.b
scoreboard players operation $ctrl.clrpk.a2 PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.a

function ps:control/components/clrpicker/refresh