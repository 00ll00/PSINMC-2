#region gamerules
gamerule sendCommandFeedback true
gamerule maxCommandChainLength 1048576
#endregion

#region chunks
forceload add 0 0
forceload add 29999984 2992
#endregion

#region scb
scoreboard objectives add PS.mem dummy
scoreboard objectives add PS.sys dummy
scoreboard objectives add PS.const dummy

scoreboard objectives add PS.main.life dummy

scoreboard objectives add PS.focus.max dummy
scoreboard objectives add PS.focus.fix dummy
scoreboard objectives add PS.focus.attach dummy
scoreboard objectives add PS.focus.get dummy
scoreboard objectives add PS.focus.x dummy
scoreboard objectives add PS.focus.y dummy
scoreboard objectives add PS.focus.z dummy
scoreboard objectives add PS.focus.r.x1 dummy
scoreboard objectives add PS.focus.r.y1 dummy
scoreboard objectives add PS.focus.r.z1 dummy
scoreboard objectives add PS.focus.r.x2 dummy
scoreboard objectives add PS.focus.r.y2 dummy
scoreboard objectives add PS.focus.r.z2 dummy

scoreboard objectives add PS.menu.layer dummy
scoreboard objectives add PS.menu.show dummy
scoreboard objectives add PS.menu.showable dummy
scoreboard objectives add PS.menu.hotk dummy

scoreboard objectives add PS.tools.type dummy
scoreboard objectives add PS.tools.typeold dummy
scoreboard objectives add PS.tools.ftype dummy
scoreboard objectives add PS.tools.vect dummy
scoreboard objectives add PS.tools.vecto dummy
scoreboard objectives add PS.tools.pathing dummy
scoreboard objectives add PS.tools.fixed dummy
scoreboard objectives add PS.tools.fixedo dummy
scoreboard objectives add PS.tools.hollow dummy
scoreboard objectives add PS.tools.rev dummy
scoreboard objectives add PS.tools.size dummy
scoreboard objectives add PS.tools.clr dummy
scoreboard objectives add PS.tools.hold dummy
scoreboard objectives add PS.tools.shape.0 dummy
scoreboard objectives add PS.tools.shape.1 dummy
scoreboard objectives add PS.tools.shape.2 dummy
scoreboard objectives add PS.tools.shape.3 dummy
scoreboard objectives add PS.tools.shape.4 dummy
scoreboard objectives add PS.tools.shape.5 dummy
scoreboard objectives add PS.tools.shape.6 dummy
scoreboard objectives add PS.tools.shape.7 dummy
scoreboard objectives add PS.tools.shape.8 dummy
scoreboard objectives add PS.tools.shape.9 dummy
scoreboard objectives add PS.tools.whd.w dummy
scoreboard objectives add PS.tools.whd.h dummy
scoreboard objectives add PS.tools.whd.d dummy
scoreboard objectives add PS.tools.r dummy
scoreboard objectives add PS.tools.vx.x dummy
scoreboard objectives add PS.tools.vx.y dummy
scoreboard objectives add PS.tools.vx.z dummy
scoreboard objectives add PS.tools.vy.x dummy
scoreboard objectives add PS.tools.vy.y dummy
scoreboard objectives add PS.tools.vy.z dummy
scoreboard objectives add PS.tools.vz.x dummy
scoreboard objectives add PS.tools.vz.y dummy
scoreboard objectives add PS.tools.vz.z dummy
scoreboard objectives add PS.tools.ready dummy
scoreboard objectives add PS.tools.freemd dummy
scoreboard objectives add PS.tools.p.x dummy
scoreboard objectives add PS.tools.p.y dummy
scoreboard objectives add PS.tools.p.z dummy
scoreboard objectives add PS.tools.wkpath dummy
scoreboard objectives add PS.tools.wka dummy
scoreboard objectives add PS.tools.wkp dummy

scoreboard objectives add PS.path.id dummy
scoreboard objectives add PS.path.a.id dummy
scoreboard objectives add PS.path.p.id dummy
scoreboard objectives add PS.path.p.x dummy
scoreboard objectives add PS.path.p.y dummy
scoreboard objectives add PS.path.p.z dummy
scoreboard objectives add PS.path.h1.x dummy
scoreboard objectives add PS.path.h1.y dummy
scoreboard objectives add PS.path.h1.z dummy
scoreboard objectives add PS.path.h2.x dummy
scoreboard objectives add PS.path.h2.y dummy
scoreboard objectives add PS.path.h2.z dummy

scoreboard objectives add PS.color.r dummy
scoreboard objectives add PS.color.g dummy
scoreboard objectives add PS.color.b dummy
scoreboard objectives add PS.color.a dummy
scoreboard objectives add PS.color.r1 dummy
scoreboard objectives add PS.color.g1 dummy
scoreboard objectives add PS.color.b1 dummy
scoreboard objectives add PS.color.a1 dummy
scoreboard objectives add PS.color.r2 dummy
scoreboard objectives add PS.color.g2 dummy
scoreboard objectives add PS.color.b2 dummy
scoreboard objectives add PS.color.a2 dummy
scoreboard objectives add PS.color.rawid dummy
scoreboard objectives add PS.color.rawtk dummy

scoreboard objectives add PS.players.id dummy
scoreboard objectives add PS.players.owner dummy

scoreboard objectives add PS.ctrl.id dummy

scoreboard objectives add PS.key.sft minecraft.custom:minecraft.sneak_time
scoreboard objectives add PS.key.sft.cd dummy
scoreboard objectives add PS.key.sft.s dummy
scoreboard objectives add PS.key.lmb.on dummy
scoreboard objectives add PS.key.lmb minecraft.custom:minecraft.damage_dealt
scoreboard objectives add PS.key.rmb minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add PS.key.rmb.cd dummy
scoreboard objectives add PS.key.rmb.s dummy
scoreboard objectives add PS.key.q minecraft.dropped:minecraft.carrot_on_a_stick

scoreboard objectives add PS.tps.show dummy
#endregion

#region values
scoreboard players set $focus.menu.dist.max PS.sys 16
scoreboard players set $color.maxraw PS.sys 100
scoreboard players set $tps.maxmem PS.sys 5

scoreboard players set $focus.block.const PS.const 1290
scoreboard players set $focus.block.const2 PS.const 1664100

scoreboard players set $-1 PS.const -1
scoreboard players set $2 PS.const 2
scoreboard players set $4 PS.const 4
scoreboard players set $5 PS.const 5
scoreboard players set $8 PS.const 8
scoreboard players set $10 PS.const 10
scoreboard players set $16 PS.const 16
scoreboard players set $1000 PS.const 1000
scoreboard players set $10000 PS.const 10000
scoreboard players set $1000000 PS.const 1000000

scoreboard players add $players.id.max PS.players.id 0
scoreboard players add $ctrl.id.max PS.ctrl.id 0
#endregion

#region teams
team add ps.blue
team modify ps.blue color blue
team add ps.red
team modify ps.red color red
team add ps.gold
team modify ps.gold color gold
team add ps.yellow
team modify ps.yellow color yellow
team add ps.gray
team modify ps.gray color gray
team add ps.dark_gray
team modify ps.dark_gray color dark_gray
team add ps.green
team modify ps.green color green
team add ps.aqua
team modify ps.aqua color aqua
team add ps.white
team modify ps.white color white
team add ps.light_purple
team modify ps.light_purple color light_purple
#endregion

#tools
setblock 29999999 5 3006 minecraft:shulker_box

#players
#alias vector actionbar_sign 29999999 6 3006
setblock 29999999 6 3006 minecraft:oak_sign

#tps
bossbar add ps:tps {"translate": "ps.tps.title","color":"gold"}
bossbar set ps:tps max 20
setblock 29999999 5 3007 minecraft:repeating_command_block{auto:1b,Command:"help me"}

#region str
setblock 29999999 2 3007 minecraft:command_block[facing=north]{auto:0b}
setblock 29999999 2 3006 minecraft:chain_command_block[facing=north]{auto:1b,UpdateLastExecution:1b,Command:"function ps:string/str2ca/step1"}
setblock 29999999 2 3005 minecraft:chain_command_block[facing=north]{auto:1b,UpdateLastExecution:0b,Command:"help me"}
setblock 29999999 2 3004 minecraft:chain_command_block[facing=north]{auto:1b,UpdateLastExecution:0b,Command:"enchant 0-0110-5053-0-4 minecraft:aqua_affinity"}
setblock 29999999 2 3003 minecraft:chain_command_block[facing=north]{auto:1b,UpdateLastExecution:0b,Command:"enchant 0-0110-5053-1-4 minecraft:aqua_affinity"}
setblock 29999999 2 3002 minecraft:chain_command_block[facing=north]{auto:1b,UpdateLastExecution:0b,Command:"function ps:string/str2ca/step2"}
setblock 29999999 2 3001 minecraft:chain_command_block[facing=down]{auto:1b,UpdateLastExecution:0b,Command:"tag 0-0110-5053-0-4 list"}
setblock 29999999 1 3001 minecraft:chain_command_block[facing=south]{auto:1b,UpdateLastExecution:0b,Command:"execute store result score #str.str2ca.tags PS.mem run tag 0-0110-5053-1-4 list"}
setblock 29999999 1 3002 minecraft:chain_command_block[facing=south]{auto:1b,UpdateLastExecution:0b,Command:"function ps:string/str2ca/step3"}
setblock 29999999 1 3003 minecraft:chain_command_block[facing=south]{auto:1b,UpdateLastExecution:0b,Command:"enchant 0-0110-5053-0-4 minecraft:aqua_affinity"}
setblock 29999999 1 3004 minecraft:chain_command_block[facing=south]{auto:1b,UpdateLastExecution:0b,Command:"enchant 0-0110-5053-1-4 minecraft:aqua_affinity"}
setblock 29999999 1 3005 minecraft:chain_command_block[facing=south]{auto:1b,UpdateLastExecution:0b,Command:"help me"}
setblock 29999999 1 3006 minecraft:chain_command_block[facing=up]{auto:1b,UpdateLastExecution:0b,Command:"function ps:string/str2ca/step4"}
setblock 29999999 1 3007 minecraft:command_block[facing=south]{auto:0b}
#alias vector str2ca_sign 29999999 3 3007
setblock 29999999 3 3007 oak_sign
#alias vector parser_sign 29999999 3 3006
setblock 29999999 3 3006 oak_sign
#endregion

#markers

#>  Focus Marker.
#   @public
#declare entity 0-0110-5053-0-1
#alias entity focus_marker 0-0110-5053-0-1
summon marker ~ ~ ~ {UUID:[I;0,17846355,0,1],Tags:["PS.","PS.focus.marker"],Marker:1b,Invisible:1b}

#>  Math Marker.
#   @private
#declare entity 0-0110-5053-0-2
#alias entity math_marker 0-0110-5053-0-2
summon marker 0.0 0.0 0.0 {UUID:[I;0,17846355,0,2],Tags:["PS.","PS.math.marker"],Marker:1b,Invisible:1b}

#>  Tools Marker.
#   @public
#declare entity 0-0110-5053-0-3
#alias entity tools_marker 0-0110-5053-0-3
summon marker 29999999 0 3007 {UUID:[I;0,17846355,0,3],Tags:["PS.","PS.math.marker"],Marker:1b,Invisible:1b}

#>  String Marker1 (must be armor_stand)
#   @private
#declare entity 0-0110-5053-0-4
#alias entity string_marker1 0-0110-5053-0-4
summon armor_stand 29999999 1 3007 {Marker:1b,UUID:[I;0,17846355,0,4],Tags:["PS.","PS.str","PS.a","PS.b","PS.c"],CustomNameVisible:1b}
#>  String Marker2 (must be armor_stand)
#   @private
#declare entity 0-0110-5053-1-4
#alias entity string_marker2 0-0110-5053-1-4
summon armor_stand 29999999 2 3007 {Marker:1b,UUID:[I;0,17846355,65536,4],Tags:["PS.","PS.str","PS.a, PS.b, PS.c"],CustomNameVisible:1b}