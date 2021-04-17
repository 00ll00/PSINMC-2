#as player
tellraw @s [{"translate": "ps.output.private"},{"translate":"ps.output.menu.clear.mainhand_tool","with":[{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true}]}]
item entity @s weapon.mainhand replace minecraft:air