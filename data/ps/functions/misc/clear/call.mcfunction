#as player
execute if score @s PS.tools.type matches 0 unless data entity @s SelectedItem run function ps:misc/clear/all_tools
execute if score @s PS.tools.type matches 0 if data entity @s SelectedItem run function ps:misc/clear/mainhand
execute if score @s PS.tools.type matches 1.. run function ps:misc/clear/mainhand_tool