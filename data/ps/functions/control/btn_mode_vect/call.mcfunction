#as focused component
execute as @a[tag=PS.players.op] store success score @s PS.tools.vect if score @s PS.tools.vect matches 0
function ps:control/btn_mode_vect/refresh