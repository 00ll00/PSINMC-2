#as stroke
scoreboard players set #color.raw.id PS.mem 0
scoreboard players operation #color.raw.wt PS.color.r = @s PS.color.r
scoreboard players operation #color.raw.wt PS.color.g = @s PS.color.g
scoreboard players operation #color.raw.wt PS.color.b = @s PS.color.b
execute align xyz as @e[tag=PS.color.raw,dx=0,dy=0,dz=0] run function ps:color/writeraw_
execute if score #color.raw.id PS.mem matches 0 run function ps:color/writeraw__
