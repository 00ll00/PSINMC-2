#as stroke
# output: @s tools.shape.0

scoreboard players set #tools.shape.get PS.mem 0
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r9] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.9
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r8] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.8
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r7] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.7
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r6] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.6
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r5] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.5
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r4] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.4
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r3] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.3
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r2] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.2
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r1] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.1
execute if score #tools.shape.get PS.mem matches 0 store success score #tools.shape.get PS.mem if entity @s[tag=PS.stroke.r0] run scoreboard players operation @s PS.tools.shape.0 = @a[tag=PS.players.op,limit=1] PS.tools.shape.0