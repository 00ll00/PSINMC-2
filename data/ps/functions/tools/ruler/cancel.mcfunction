#as player

kill @e[tag=PS.ctrl.ruler,tag=PS.players.belonging]

data modify storage ps:players storage.data.tools.ruler.state set value ""
function ps:players/storage/markdirty