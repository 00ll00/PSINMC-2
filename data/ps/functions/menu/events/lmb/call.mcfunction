tag @s add PS.menu.clicked
execute store result score $menu.tag.len PS.mem run data get entity @s ArmorItems[0].tag.path
execute if score $menu.tag.len PS.mem matches 11 run function ps:menu/events/lmb/len/11
execute if score $menu.tag.len PS.mem matches 15 run function ps:menu/events/lmb/len/15
execute if score $menu.tag.len PS.mem matches 19 run function ps:menu/events/lmb/len/19
execute if score $menu.tag.len PS.mem matches 13 run function ps:menu/events/lmb/len/13
