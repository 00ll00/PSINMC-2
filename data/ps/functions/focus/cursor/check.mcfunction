#as player
execute unless entity @s[scores={PS.tools.type=1..,PS.menu.show=0}] run kill @e[tag=PS.focus.cursor,tag=PS.players.belonging]
execute if entity @s[scores={PS.tools.type=1..,PS.menu.show=0}] unless entity @e[tag=PS.focus.cursor,tag=PS.players.belonging] run function ps:focus/cursor/get
