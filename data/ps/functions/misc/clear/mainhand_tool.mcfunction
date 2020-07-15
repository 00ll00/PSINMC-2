#as player
tellraw @s [{"translate": "ps.output.private"},{"translate":"ps.output.menu.clear.mainhand_tool","with":[{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true}]}]
replaceitem entity @s weapon.mainhand minecraft:air