scoreboard players set #color.got PS.mem 0
execute align xyz as @e[tag=PS.color.raw,dx=0,dy=0,dz=0,limit=1] run function ps:color/getcolor/getraw
execute if score #color.got PS.mem matches 1 run scoreboard players operation @s PS.color.r = #color.raw PS.color.r
execute if score #color.got PS.mem matches 1 run scoreboard players operation @s PS.color.g = #color.raw PS.color.g
execute if score #color.got PS.mem matches 1 run scoreboard players operation @s PS.color.b = #color.raw PS.color.b
execute if score #color.got PS.mem matches 0 if block ~ ~ ~ #ps:colored run function ps:color/getcolor/call_