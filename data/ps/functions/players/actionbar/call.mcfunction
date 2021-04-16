#as player in overworld
data modify block 29999999 6 3006 Text2 set value ""
execute as @s[scores={PS.tools.type=1..,PS.menu.show=0}] if data entity @s SelectedItem.tag.PS_actionbar run function ps:tools/actionbar
execute as @s[scores={PS.tools.type=1..,PS.menu.show=0,PS.tools.hold=0}] run data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true,"bold":true}]'

title @s actionbar {"nbt": "Text2","block": "29999999 6 3006","interpret": true}