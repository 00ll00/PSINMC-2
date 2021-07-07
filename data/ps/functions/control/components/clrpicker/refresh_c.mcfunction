#as clrpk.c
function ps:color/getitem/call
data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with air