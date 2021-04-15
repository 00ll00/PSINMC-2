#as player
scoreboard players set @s PS.key.rmb.s 1

#tool
scoreboard players set @s PS.tools.hold 1
execute if score @s PS.menu.show matches 0 run function ps:tools/events/rmb_dn/call