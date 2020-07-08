#as player at player
#get tags
tag @s add PS.players.op
execute as @e[tag=PS.players.owned] if score @s PS.players.owner = @a[tag=PS.players.op,limit=1] PS.players.id run tag @s add PS.players.belonging

#read data
function ps:players/read

#check key q f
function ps:key/q/check
function ps:key/f/check

#check tool
function ps:tools/check

#focus
#function ps:focus/cursor/check
##temp  will move to sp
function ps:tools/ftype
execute as @s[scores={PS.tools.ftype=1}] run function ps:focus/block/call
execute as @s[scores={PS.tools.ftype=2}] run function ps:focus/blocka/call
execute as @s[scores={PS.tools.ftype=3}] run function ps:focus/vector/call

#check key events (menu gen there, normal controls gen after this)
function ps:key/shift/check
function ps:key/rmb/check
execute unless score @s PS.key.lmb.on matches 0 run function ps:key/lmb/check

#focus menu
execute if score @s PS.menu.show matches 1 at @s run function ps:focus/menu/call

#actionbar
function ps:players/actionbar/call

#return tags
tag @s remove PS.players.op
tag @e[tag=PS.players.belonging] remove PS.players.belonging
tag @e[tag=PS.ctrl.newed] remove PS.ctrl.newed