#as player
scoreboard players operation @s PS.tools.typeold >< @s PS.tools.type
execute if score @s PS.tools.hold matches 1 run function ps:tools/events/rmb_up/call
scoreboard players set @s PS.tools.hold 0
scoreboard players operation @s PS.tools.typeold >< @s PS.tools.type
function ps:tools/ftype
execute if score @s PS.menu.show matches 1 run function ps:menu/hide
function ps:tools/events/change/deselect
function ps:tools/events/change/selected