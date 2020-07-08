execute store result score $menu.tag.len PS.mem run data get entity @s ArmorItems[0].tag.path
execute if score $menu.tag.len PS.mem matches 5 run function ps:menu/events/mmi/len/5
execute if score $menu.tag.len PS.mem matches 11 run function ps:menu/events/mmi/len/11
execute if score $menu.tag.len PS.mem matches 14 run function ps:menu/events/mmi/len/14
execute if score $menu.tag.len PS.mem matches 13 run function ps:menu/events/mmi/len/13
execute if score $menu.tag.len PS.mem matches 15 run function ps:menu/events/mmi/len/15
execute if score $menu.tag.len PS.mem matches 16 run function ps:menu/events/mmi/len/16
execute if score $menu.tag.len PS.mem matches 20 run function ps:menu/events/mmi/len/20
execute if score $menu.tag.len PS.mem matches 19 run function ps:menu/events/mmi/len/19
execute if score $menu.tag.len PS.mem matches 23 run function ps:menu/events/mmi/len/23
execute if score $menu.tag.len PS.mem matches 9 run function ps:menu/events/mmi/len/9
