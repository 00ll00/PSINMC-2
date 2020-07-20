#as focused component
execute as @a[tag=PS.players.op] store success score @s PS.tools.rev if score @s PS.tools.rev matches 0
function ps:control/btn_tools_rev/refresh