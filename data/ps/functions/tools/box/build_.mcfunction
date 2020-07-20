#as player
function ps:tools/box/write
data modify storage ps:players storage.data.tools.box_last set from storage ps:players storage.data.tools.box

data modify storage ps:players storage.data.tools.box.state set value "build"
data modify storage ps:players storage.needwrite set value 1b