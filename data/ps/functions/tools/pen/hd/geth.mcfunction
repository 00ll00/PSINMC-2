#as player

function ps:focus/record2
scoreboard players set #tools.pen.geth.temp PS.mem 0
execute store success score #tools.pen.geth.temp PS.mem if score @s PS.focus.r.x1 = @s PS.focus.r.x2 if score @s PS.focus.r.y1 = @s PS.focus.r.y2 if score @s PS.focus.r.z1 = @s PS.focus.r.z2
execute if score #tools.pen.geth.temp PS.mem matches 0 run data modify storage ps:players storage.data.tools.pen.state set value "hd_a"
execute if score #tools.pen.geth.temp PS.mem matches 0 run function ps:players/storage/markdirty