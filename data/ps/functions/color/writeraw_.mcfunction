#as raw
scoreboard players operation @s PS.color.r = #color.raw.wt PS.color.r
scoreboard players operation @s PS.color.g = #color.raw.wt PS.color.g
scoreboard players operation @s PS.color.b = #color.raw.wt PS.color.b
scoreboard players operation #color.raw.id PS.mem = @s PS.color.rawid
execute as @e[tag=PS.color.raw] if score @s PS.color.rawid < #color.raw.id PS.mem run scoreboard players add @s PS.color.rawid 1
scoreboard players set @s PS.color.rawid 1
scoreboard players operation @s PS.color.rawtk = $clock.tick PS.mem