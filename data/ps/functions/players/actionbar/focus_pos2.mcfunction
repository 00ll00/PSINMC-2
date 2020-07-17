#as player
scoreboard players operation $focus.r.x1 PS.mem = @s PS.focus.r.x1
scoreboard players operation $focus.r.y1 PS.mem = @s PS.focus.r.y1
scoreboard players operation $focus.r.z1 PS.mem = @s PS.focus.r.z1
scoreboard players operation $focus.r.x2 PS.mem = @s PS.focus.r.x2
scoreboard players operation $focus.r.y2 PS.mem = @s PS.focus.r.y2
scoreboard players operation $focus.r.z2 PS.mem = @s PS.focus.r.z2
data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.pos.from"},{"score": {"name": "$focus.r.x1","objective": "PS.mem"},"color":"#ffffff"},",",{"score": {"name": "$focus.r.y1","objective": "PS.mem"},"color":"#ffffff"},",",{"score": {"name": "$focus.r.z1","objective": "PS.mem"},"color":"#ffffff"}," ",{"translate":"ps.actionbar.pos.to"},{"score": {"name": "$focus.r.x2","objective": "PS.mem"},"color":"#ffffff"},",",{"score": {"name": "$focus.r.y2","objective": "PS.mem"},"color":"#ffffff"},",",{"score": {"name": "$focus.r.z2","objective": "PS.mem"},"color":"#ffffff"}]'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
