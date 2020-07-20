#as stroke at @s
scoreboard players add #tools.box.strok.count PS.mem 1

execute if score #tools.box.hollow PS.mem matches 1 align xyz run function ps:tools/box/stroke_r/s_h
execute if score #tools.box.hollow PS.mem matches 0 align xyz run function ps:tools/box/stroke_r/s_s