#as player
scoreboard players operation $tools.whd.w PS.mem = @s PS.tools.whd.w
scoreboard players operation $tools.whd.h PS.mem = @s PS.tools.whd.h
scoreboard players operation $tools.whd.d PS.mem = @s PS.tools.whd.d
execute if score $tools.whd.w PS.mem matches ..-1 run scoreboard players operation $tools.whd.w PS.mem *= $-1 PS.const
execute if score $tools.whd.h PS.mem matches ..-1 run scoreboard players operation $tools.whd.h PS.mem *= $-1 PS.const
execute if score $tools.whd.d PS.mem matches ..-1 run scoreboard players operation $tools.whd.d PS.mem *= $-1 PS.const
data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.whd"},{"score": {"name": "$tools.whd.w","objective": "PS.mem"},"color":"#ffffff"},",",{"score": {"name": "$tools.whd.h","objective": "PS.mem"},"color":"#ffffff"},",",{"score": {"name": "$tools.whd.d","objective": "PS.mem"},"color":"#ffffff"}]'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'