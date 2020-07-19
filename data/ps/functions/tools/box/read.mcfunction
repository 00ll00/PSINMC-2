#as player
execute store result score @s PS.tools.ready run data get storage ps:players storage.data.tools.box.ready

execute store result score @s PS.focus.r.x1 run data get storage ps:players storage.data.tools.box.pos1[0]
execute store result score @s PS.focus.r.y1 run data get storage ps:players storage.data.tools.box.pos1[1]
execute store result score @s PS.focus.r.z1 run data get storage ps:players storage.data.tools.box.pos1[2]
execute store result score @s PS.focus.r.x2 run data get storage ps:players storage.data.tools.box.pos2[0]
execute store result score @s PS.focus.r.y2 run data get storage ps:players storage.data.tools.box.pos2[1]
execute store result score @s PS.focus.r.z2 run data get storage ps:players storage.data.tools.box.pos2[2]
execute store result score @s PS.tools.whd.w run data get storage ps:players storage.data.tools.box.whd[0]
execute store result score @s PS.tools.whd.h run data get storage ps:players storage.data.tools.box.whd[1]
execute store result score @s PS.tools.whd.d run data get storage ps:players storage.data.tools.box.whd[2]