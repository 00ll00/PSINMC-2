#as focused component
execute as @a[tag=PS.players.op] store success score @s PS.tools.hollow if score @s PS.tools.hollow matches 0
function ps:control/btn_mode_hollow/refresh