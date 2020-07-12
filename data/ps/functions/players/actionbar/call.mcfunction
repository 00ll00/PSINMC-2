#as player in overworld
data modify block 29999999 6 3006 Text2 set value ""
execute as @s[scores={PS.tools.type=1..,PS.menu.show=0}] if data entity @s SelectedItem.tag.PS_actionbar run function ps:players/actionbar/tools

title @s actionbar {"nbt": "Text2","block": "29999999 6 3006","interpret": true}