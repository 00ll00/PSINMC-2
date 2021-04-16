scoreboard players operation $color.r PS.mem = @s PS.color.r
scoreboard players operation $color.g PS.mem = @s PS.color.g
scoreboard players operation $color.b PS.mem = @s PS.color.b
data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.color"},{"score": {"name": "$color.r","objective": "PS.mem"},"color":"#ff0000"},{"score": {"name": "$color.g","objective": "PS.mem"},"color":"#00ff00"},{"score": {"name": "$color.b","objective": "PS.mem"},"color":"#0000ff"}]'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
