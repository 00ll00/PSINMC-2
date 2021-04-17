#as player

execute as @e[tag=PS.ctrl.ruler,tag=PS.players.belonging] run data modify entity @s Tags set value ["PS.marker_","PS.marker","PS.players.owned","PS.players.belonging","PS.focus.target"]
execute as @e[tag=PS.marker_] run function ps:tools/marker/initm

tag @e[tag=PS.marker_] remove PS.marker_