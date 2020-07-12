#as focused component
scoreboard players operation $ctrl.clrpk.a PS.mem = $ctrl.sld.s PS.mem
scoreboard players operation $ctrl.clrpk.clr PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.bc,limit=1] PS.tools.clr
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.a = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.r = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.g = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.b = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.a = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.a = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.r = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.g = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.b = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.a = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] run function ps:control/components/clrpicker/refresh_c
execute if score $ctrl.clrpk.clr PS.mem matches 1 as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] run function ps:control/components/clrpicker/refresh_c

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sa,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
data modify entity @s Glowing set value 1b