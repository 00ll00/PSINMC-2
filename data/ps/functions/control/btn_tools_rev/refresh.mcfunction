#as active component

execute if score @a[tag=PS.players.op,limit=1] PS.tools.rev matches 0 run function ps:control/btn_tools_rev/refresh_0
execute if score @a[tag=PS.players.op,limit=1] PS.tools.rev matches 1 run function ps:control/btn_tools_rev/refresh_1
