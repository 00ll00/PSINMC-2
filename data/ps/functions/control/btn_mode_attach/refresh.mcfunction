#as active component

execute if score @a[tag=PS.players.op,limit=1] PS.focus.attach matches 0 run function ps:control/btn_mode_attach/refresh_0
execute if score @a[tag=PS.players.op,limit=1] PS.focus.attach matches 1 run function ps:control/btn_mode_attach/refresh_1
