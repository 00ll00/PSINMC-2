#as player
execute anchored eyes run data modify block 29999999 5 3006 RecordItem set from entity @e[type=item,limit=1,sort=nearest] Item
loot replace entity @s weapon.mainhand mine 29999999 5 3006 bedrock{PS_loot_tool:1b}