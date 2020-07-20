#as player
execute store result storage ps:players storage.data.tools.box.ready byte 1 run scoreboard players get @s PS.tools.ready
execute store result storage ps:players storage.data.tools.box.freemode byte 1 run scoreboard players get @s PS.tools.freemd

execute store result storage ps:players storage.data.tools.box.pos1[0] int 1 run scoreboard players get @s PS.focus.r.x1
execute store result storage ps:players storage.data.tools.box.pos1[1] int 1 run scoreboard players get @s PS.focus.r.y1
execute store result storage ps:players storage.data.tools.box.pos1[2] int 1 run scoreboard players get @s PS.focus.r.z1
execute store result storage ps:players storage.data.tools.box.pos2[0] int 1 run scoreboard players get @s PS.focus.r.x2
execute store result storage ps:players storage.data.tools.box.pos2[1] int 1 run scoreboard players get @s PS.focus.r.y2
execute store result storage ps:players storage.data.tools.box.pos2[2] int 1 run scoreboard players get @s PS.focus.r.z2
execute store result storage ps:players storage.data.tools.box.whd[0] int 1 run scoreboard players get @s PS.tools.whd.w
execute store result storage ps:players storage.data.tools.box.whd[1] int 1 run scoreboard players get @s PS.tools.whd.h
execute store result storage ps:players storage.data.tools.box.whd[2] int 1 run scoreboard players get @s PS.tools.whd.d
execute store result storage ps:players storage.data.tools.box.vx[0] int 1 run scoreboard players get @s PS.tools.whd.w
execute store result storage ps:players storage.data.tools.box.vx[1] int 1 run scoreboard players get @s PS.tools.whd.h
execute store result storage ps:players storage.data.tools.box.vx[2] int 1 run scoreboard players get @s PS.tools.whd.d

execute store result storage ps:players storage.data.tools.box.hollow byte 1 run scoreboard players get @s PS.tools.hollow

data modify storage ps:players storage.needwrite set value 1b