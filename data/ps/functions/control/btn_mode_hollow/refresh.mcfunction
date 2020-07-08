#as active component

execute if score @a[tag=PS.players.op,limit=1] PS.tools.hollow matches 0 run function ps:control/btn_mode_hollow/refresh_0
execute if score @a[tag=PS.players.op,limit=1] PS.tools.hollow matches 1 run function ps:control/btn_mode_hollow/refresh_1
