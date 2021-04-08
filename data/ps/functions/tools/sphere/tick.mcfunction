#as player
execute if data storage ps:players storage.data.tools.sphere{state:"build"} run function ps:tools/sphere/build__
kill @e[tag=PS.players.belonging,tag=PS.tools.sphere.stroke,scores={PS.main.life=3..}]