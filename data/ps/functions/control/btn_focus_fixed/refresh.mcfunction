#as active component

execute if score @a[tag=PS.players.op,limit=1] PS.tools.fixed matches 0 run function ps:control/btn_focus_fixed/refresh_0
execute if score @a[tag=PS.players.op,limit=1] PS.tools.fixed matches 1 run function ps:control/btn_focus_fixed/refresh_1
