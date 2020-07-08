#as focused component
execute as @a[tag=PS.players.op] store success score @s PS.tools.attach if score @s PS.tools.attach matches 0
function ps:control/btn_mode_attach/refresh