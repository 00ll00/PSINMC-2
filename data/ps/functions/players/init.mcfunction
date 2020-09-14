#as player
tag @s add PS.op
tag @s add PS.player.init

#init id
scoreboard players add @s PS.players.id 0
execute as @s[scores={PS.players.id=0}] store result score @s PS.players.id run scoreboard players add $players.id.max PS.players.id 1

#region scb

scoreboard players set @s PS.focus.max 120
scoreboard players set @s PS.focus.fix 1

scoreboard players set @s PS.menu.show 0
scoreboard players set @s PS.menu.showable 1
scoreboard players set @s PS.menu.hotk 0

scoreboard players set @s PS.tools.type 0
scoreboard players set @s PS.tools.typeold 0
scoreboard players set @s PS.tools.vect 0
scoreboard players set @s PS.tools.fixed 0
scoreboard players set @s PS.focus.attach 1
scoreboard players set @s PS.tools.hollow 0
scoreboard players set @s PS.tools.rev 0
scoreboard players set @s PS.tools.size 1
scoreboard players set @s PS.tools.hold 0
scoreboard players set @s PS.tools.shape.0 7
scoreboard players set @s PS.tools.shape.1 7
scoreboard players set @s PS.tools.shape.2 6
scoreboard players set @s PS.tools.shape.3 6
scoreboard players set @s PS.tools.shape.4 5
scoreboard players set @s PS.tools.shape.5 5
scoreboard players set @s PS.tools.shape.6 4
scoreboard players set @s PS.tools.shape.7 3
scoreboard players set @s PS.tools.shape.8 2
scoreboard players set @s PS.tools.shape.9 1

scoreboard players set @s PS.color.r1 0
scoreboard players set @s PS.color.g1 0
scoreboard players set @s PS.color.b1 0
scoreboard players set @s PS.color.a1 7
scoreboard players set @s PS.color.r2 7
scoreboard players set @s PS.color.g2 7
scoreboard players set @s PS.color.b2 7
scoreboard players set @s PS.color.a2 7

scoreboard players set @s PS.key.q 0
scoreboard players set @s PS.key.sft 0
scoreboard players set @s PS.key.sft.s 0
scoreboard players set @s PS.key.sft.cd 0
scoreboard players set @s PS.key.rmb.s 0
scoreboard players set @s PS.key.rmb.cd 0
scoreboard players set @s PS.key.lmb.on 0

scoreboard players set @s PS.tps.show 0
#endregion

#summon datastorage
execute as @e[tag=PS.players.data] if score @s PS.players.owner = @a[tag=PS.player.init,limit=1] PS.players.id run kill @s
function ps:players/getstorage

tag @s remove PS.player.init