#scoreboard players operation $tools.size PS.mem = @s PS.tools.size (read in read)
data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.size"},{"score": {"name": "$tools.size","objective": "PS.mem"},"color":"#ffffff"}]'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
