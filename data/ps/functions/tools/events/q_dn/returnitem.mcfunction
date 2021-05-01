#as player
data modify block 29999999 5 3006 Items set value [{id:"minecraft:tnt",Count:1}]
execute anchored eyes run data modify block 29999999 5 3006 Items[0] set from entity @e[type=item,limit=1,sort=nearest] Item
item entity @s weapon.mainhand copy block 29999999 5 3006 container.0