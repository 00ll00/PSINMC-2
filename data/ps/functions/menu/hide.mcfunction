#as player
scoreboard players set @s PS.menu.show 0
execute as @e[tag=PS.menu.focused,tag=PS.players.belonging,tag=PS.menu.event.exit,tag=!PS.menu.clicked] run function ps:menu/events/exit/call
kill @e[tag=PS.players.belonging,tag=PS.menu]

scoreboard players set @s PS.key.lmb.on -1