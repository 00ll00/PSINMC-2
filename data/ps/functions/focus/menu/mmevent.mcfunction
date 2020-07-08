#as player
tag @e[tag=PS.menu.clicked,tag=PS.players.belonging] remove PS.menu.clicked
execute as @e[tag=PS.menu.focused_,tag=PS.players.belonging] run function ps:menu/events/fold
execute as @e[tag=PS.menu.focused,tag=PS.players.belonging,tag=PS.menu.event.mmo] run function ps:menu/events/mmo/call
tag @e[tag=PS.menu.focused,tag=PS.players.belonging] remove PS.menu.focused
tag @e[tag=PS.menu.focused_,tag=PS.players.belonging] add PS.menu.focused
execute as @e[tag=PS.menu.focused,tag=PS.players.belonging,tag=PS.menu.event.mmi] run function ps:menu/events/mmi/call