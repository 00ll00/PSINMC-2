execute as @s[scores={PS.tools.vecto=1}] run data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.mode_vect","color":"green"}]'
execute as @s[scores={PS.tools.vecto=2}] run data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.mode_vectmarker","color":"green"}]'
execute as @s[scores={PS.tools.vecto=0,PS.tools.fixedo=0}] run data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.mode_fixed_0","color":"yellow"}]'
execute as @s[scores={PS.tools.vecto=0,PS.tools.fixedo=1}] run data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.mode_fixed_1","color":"yellow"}]'
data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
execute as @s[scores={PS.tools.vecto=0,PS.focus.attach=1}] run data modify block 29999999 6 3006 Text1 set value '[{"translate":"ps.actionbar.mode_attach","color":"yellow"}]'
execute as @s[scores={PS.tools.vecto=0,PS.focus.attach=1}] run data modify block 29999999 6 3006 Text2 set value '[{"nbt": "Text2","block": "29999999 6 3006","interpret": true},{"nbt": "Text1","block": "29999999 6 3006","interpret": true}," "]'
