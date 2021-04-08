#as player
data modify storage ps:players storage.data.tools.sphere.state set value "pause"
function ps:players/storage/markdirty

tag @e[tag=PS.tools.sphere.stroke,tag=PS.players.belonging] remove PS.main.tick_life