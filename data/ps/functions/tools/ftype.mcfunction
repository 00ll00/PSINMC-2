#as player
scoreboard players set @s PS.tools.ftype 0
scoreboard players set @s PS.tools.vecto -1
execute if data entity @s SelectedItem.tag.PS_tool_modevect store result score @s PS.tools.vecto run data get entity @s SelectedItem.tag.PS_tool_modevect
execute if score @s PS.tools.vecto matches -1 run scoreboard players operation @s PS.tools.vecto = @s PS.tools.vect
scoreboard players set @s PS.tools.fixedo -1
execute if data entity @s SelectedItem.tag.PS_tool_modefixed store result score @s PS.tools.fixedo run data get entity @s SelectedItem.tag.PS_tool_modefixed
execute if score @s PS.tools.fixedo matches -1 run scoreboard players operation @s PS.tools.fixedo = @s PS.tools.fixed
execute as @s[scores={PS.menu.show=0,PS.tools.type=1..,PS.tools.vecto=0,PS.tools.fixedo=0}] run scoreboard players set @s PS.tools.ftype 1
execute as @s[scores={PS.menu.show=0,PS.tools.type=1..,PS.tools.vecto=0,PS.tools.fixedo=1}] run scoreboard players set @s PS.tools.ftype 2
execute as @s[scores={PS.menu.show=0,PS.tools.type=1..,PS.tools.vecto=1}] run scoreboard players set @s PS.tools.ftype 3