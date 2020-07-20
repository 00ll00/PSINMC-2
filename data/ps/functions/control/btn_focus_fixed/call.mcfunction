#as focused component
execute as @a[tag=PS.players.op] store success score @s PS.tools.fixed if score @s PS.tools.fixed matches 0
function ps:control/btn_focus_fixed/refresh