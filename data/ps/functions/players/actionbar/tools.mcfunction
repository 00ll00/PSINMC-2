#as player
data modify storage ps:players actionbar.raw set from entity @s SelectedItem.tag.PS_actionbar
function ps:players/actionbar/recu
execute if score @s PS.tools.hold matches 0 run data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true,"bold":true}]'