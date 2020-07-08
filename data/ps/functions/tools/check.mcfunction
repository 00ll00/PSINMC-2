#as player
#tool id
scoreboard players operation @s PS.tools.typeold = @s PS.tools.type
execute store result score @s PS.tools.type run data get entity @s SelectedItem.tag.PS_tool_id

execute unless score @s PS.tools.type = @s PS.tools.typeold run function ps:tools/events/change/call