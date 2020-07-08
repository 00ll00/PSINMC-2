data modify entity @e[tag=PS.ctrl.active,tag=PS.ctrl.btn.title,limit=1] CustomName set value '[{"translate":"ps.ctrl.btn_mode_fixed.0","color":"white"}," ",{"translate":"ps.ctrl.btn_mode_fixed.1","color":"yellow"}]'
scoreboard players set @s PS.color.r 7
scoreboard players set @s PS.color.g 4
scoreboard players set @s PS.color.b 0
function ps:color/getitem/call