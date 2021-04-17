scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.r = $ctrl.clrpk.r1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.g = $ctrl.clrpk.g1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.b = $ctrl.clrpk.b1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1] PS.color.a = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.r = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.g = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a1] PS.color.b = $ctrl.clrpk.a1 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.r = $ctrl.clrpk.r2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.g = $ctrl.clrpk.g2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.b = $ctrl.clrpk.b2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2] PS.color.a = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.r = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.g = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.a2] PS.color.b = $ctrl.clrpk.a2 PS.mem
scoreboard players operation $ctrl.clrpk.clr PS.mem = @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.bc] PS.tools.clr
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation $ctrl.clrpk.r PS.mem = $ctrl.clrpk.r1 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation $ctrl.clrpk.g PS.mem = $ctrl.clrpk.g1 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation $ctrl.clrpk.b PS.mem = $ctrl.clrpk.b1 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 run scoreboard players operation $ctrl.clrpk.a PS.mem = $ctrl.clrpk.a1 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation $ctrl.clrpk.r PS.mem = $ctrl.clrpk.r2 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation $ctrl.clrpk.g PS.mem = $ctrl.clrpk.g2 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation $ctrl.clrpk.b PS.mem = $ctrl.clrpk.b2 PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 run scoreboard players operation $ctrl.clrpk.a PS.mem = $ctrl.clrpk.a2 PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.sld.s,tag=!PS.ctrl.clrpk.sa] PS.color.r = $ctrl.clrpk.r PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.sld.s,tag=!PS.ctrl.clrpk.sa] PS.color.g = $ctrl.clrpk.g PS.mem
scoreboard players operation @e[tag=PS.ctrl.active,tag=PS.ctrl.sld.s,tag=!PS.ctrl.clrpk.sa] PS.color.b = $ctrl.clrpk.b PS.mem

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
execute if score $ctrl.clrpk.clr PS.mem matches 0 run data modify entity @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c1,limit=1] Glowing set value 1b
execute if score $ctrl.clrpk.clr PS.mem matches 1 run data modify entity @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c2,limit=1] Glowing set value 1b
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c] run function ps:color/getitem/call
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c] run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
item entity @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.c] weapon.mainhand replace air

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s0] run scoreboard players set @s PS.color.r 0
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s1] run scoreboard players set @s PS.color.r 1
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s2] run scoreboard players set @s PS.color.r 2
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s3] run scoreboard players set @s PS.color.r 3
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s4] run scoreboard players set @s PS.color.r 4
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s5] run scoreboard players set @s PS.color.r 5
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s6] run scoreboard players set @s PS.color.r 6
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr,tag=PS.ctrl.sld.s7] run scoreboard players set @s PS.color.r 7
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sr] if score @s PS.color.r = $ctrl.clrpk.r PS.mem run data modify entity @s Glowing set value 1b

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s0] run scoreboard players set @s PS.color.g 0
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s1] run scoreboard players set @s PS.color.g 1
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s2] run scoreboard players set @s PS.color.g 2
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s3] run scoreboard players set @s PS.color.g 3
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s4] run scoreboard players set @s PS.color.g 4
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s5] run scoreboard players set @s PS.color.g 5
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s6] run scoreboard players set @s PS.color.g 6
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg,tag=PS.ctrl.sld.s7] run scoreboard players set @s PS.color.g 7
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sg] if score @s PS.color.g = $ctrl.clrpk.g PS.mem run data modify entity @s Glowing set value 1b

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s0] run scoreboard players set @s PS.color.b 0
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s1] run scoreboard players set @s PS.color.b 1
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s2] run scoreboard players set @s PS.color.b 2
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s3] run scoreboard players set @s PS.color.b 3
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s4] run scoreboard players set @s PS.color.b 4
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s5] run scoreboard players set @s PS.color.b 5
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s6] run scoreboard players set @s PS.color.b 6
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb,tag=PS.ctrl.sld.s7] run scoreboard players set @s PS.color.b 7
execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sb] if score @s PS.color.b = $ctrl.clrpk.b PS.mem run data modify entity @s Glowing set value 1b

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.clrpk.sa] if score @s PS.color.a = $ctrl.clrpk.a PS.mem run data modify entity @s Glowing set value 1b

execute as @e[tag=PS.ctrl.active,tag=PS.ctrl.sld.s,tag=!PS.ctrl.clrpk.sa] run function ps:color/getitem/call