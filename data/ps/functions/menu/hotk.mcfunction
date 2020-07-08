#as player
execute store success score @s PS.menu.hotk if score @s PS.menu.hotk matches 0
execute if score @s PS.menu.hotk matches 0 run data modify storage ps:cache output set value '{"translate":"ps.output.menu.hotk.0","with":[{"keybind": "key.sneak"}]}'
execute if score @s PS.menu.hotk matches 1 run data modify storage ps:cache output set value '{"translate":"ps.output.menu.hotk.1","with":[{"keybind": "key.sneak"}]}'
tellraw @s [{"translate": "ps.output.private"},{"translate": "ps.output.menu.hotk","with": [{"nbt": "output","storage": "ps:cache","interpret": true}]}]