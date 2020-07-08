#as clrpk.c
function ps:color/getitem/call
data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
replaceitem entity @s weapon.mainhand air