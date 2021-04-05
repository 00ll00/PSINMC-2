#as player
execute if data storage ps:players storage.data.tools.cube{state:"build"} run function ps:tools/cube/build__
kill @e[tag=PS.players.belonging,tag=PS.tools.cube.stroke,scores={PS.main.life=6..}]