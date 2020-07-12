scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.r = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.g = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.b = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.a = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.r = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.g = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.b = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.a = $ctrl.clrpk.a2 PS.mem
scoreboard players operation $ctrl.clrpk.clr PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.bc] PS.tools.clr
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation $ctrl.clrpk.a PS.mem = $ctrl.clrpk.a1 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation $ctrl.clrpk.a PS.mem = $ctrl.clrpk.a2 PS.mem

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
execute if score $ctrl.clrpk.clr PS.mem matches 0 run data modify entity @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1,limit=1] Glowing set value 1b
execute if score $ctrl.clrpk.clr PS.mem matches 1 run data modify entity @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2,limit=1] Glowing set value 1b
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a] run function ps:color/getitem/call
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a] run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
replaceitem entity @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a] weapon.mainhand air

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sa] if score @s PS.color.a = $ctrl.clrpk.a PS.mem run data modify entity @s Glowing set value 1b