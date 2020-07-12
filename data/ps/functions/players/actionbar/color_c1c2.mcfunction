scoreboard players operation $color.r1 PS.mem = @s PS.color.r1
scoreboard players operation $color.g1 PS.mem = @s PS.color.g1
scoreboard players operation $color.b1 PS.mem = @s PS.color.b1
scoreboard players operation $color.r2 PS.mem = @s PS.color.r2
scoreboard players operation $color.g2 PS.mem = @s PS.color.g2
scoreboard players operation $color.b2 PS.mem = @s PS.color.b2
data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.color"},{"score": {"name": "$color.r1","objective": "PS.mem"},"color":"#ff0000"},{"score": {"name": "$color.g1","objective": "PS.mem"},"color":"#00ff00"},{"score": {"name": "$color.b1","objective": "PS.mem"},"color":"#0000ff"}," ",{"score": {"name": "$color.r2","objective": "PS.mem"},"color":"#ff0000"},{"score": {"name": "$color.g2","objective": "PS.mem"},"color":"#00ff00"},{"score": {"name": "$color.b2","objective": "PS.mem"},"color":"#0000ff"}]'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
