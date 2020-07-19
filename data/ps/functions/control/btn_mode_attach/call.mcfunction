#as focused component
execute as @a[tag=PS.players.op] store success score @s PS.focus.attach if score @s PS.focus.attach matches 0
function ps:control/btn_mode_attach/refresh