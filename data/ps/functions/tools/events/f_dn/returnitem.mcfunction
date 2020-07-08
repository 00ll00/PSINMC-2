#as player
data modify block 29999999 5 3006 RecordItem set from entity @s Inventory[{Slot:-106b}]
loot replace entity @s weapon.mainhand mine 29999999 5 3006 bedrock{PS_loot_tool:1b}
replaceitem entity @s weapon.offhand minecraft:air