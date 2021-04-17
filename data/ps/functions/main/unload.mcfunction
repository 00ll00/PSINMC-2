#region chunks
forceload remove 0 0
forceload remove 29999984 2992
#endregion

#region scb
scoreboard objectives remove PS.mem
scoreboard objectives remove PS.sys
scoreboard objectives remove PS.const

scoreboard objectives remove PS.main.life

scoreboard objectives remove PS.focus.max
scoreboard objectives remove PS.focus.fix
scoreboard objectives remove PS.focus.attach
scoreboard objectives remove PS.focus.get
scoreboard objectives remove PS.focus.x
scoreboard objectives remove PS.focus.y
scoreboard objectives remove PS.focus.z
scoreboard objectives remove PS.focus.r.x1
scoreboard objectives remove PS.focus.r.y1
scoreboard objectives remove PS.focus.r.z1
scoreboard objectives remove PS.focus.r.x2
scoreboard objectives remove PS.focus.r.y2
scoreboard objectives remove PS.focus.r.z2

scoreboard objectives remove PS.menu.layer
scoreboard objectives remove PS.menu.show
scoreboard objectives remove PS.menu.showable
scoreboard objectives remove PS.menu.hotk

scoreboard objectives remove PS.tools.type
scoreboard objectives remove PS.tools.typeold
scoreboard objectives remove PS.tools.ftype
scoreboard objectives remove PS.tools.vect
scoreboard objectives remove PS.tools.vecto
scoreboard objectives remove PS.tools.pathing
scoreboard objectives remove PS.tools.fixed
scoreboard objectives remove PS.tools.fixedo
scoreboard objectives remove PS.tools.hollow
scoreboard objectives remove PS.tools.rev
scoreboard objectives remove PS.tools.size
scoreboard objectives remove PS.tools.clr
scoreboard objectives remove PS.tools.hold
scoreboard objectives remove PS.tools.shape.0
scoreboard objectives remove PS.tools.shape.1
scoreboard objectives remove PS.tools.shape.2
scoreboard objectives remove PS.tools.shape.3
scoreboard objectives remove PS.tools.shape.4
scoreboard objectives remove PS.tools.shape.5
scoreboard objectives remove PS.tools.shape.6
scoreboard objectives remove PS.tools.shape.7
scoreboard objectives remove PS.tools.shape.8
scoreboard objectives remove PS.tools.shape.9
scoreboard objectives remove PS.tools.whd.w
scoreboard objectives remove PS.tools.whd.h
scoreboard objectives remove PS.tools.whd.d
scoreboard objectives remove PS.tools.r
scoreboard objectives remove PS.tools.vx.x
scoreboard objectives remove PS.tools.vx.y
scoreboard objectives remove PS.tools.vx.z
scoreboard objectives remove PS.tools.vy.x
scoreboard objectives remove PS.tools.vy.y
scoreboard objectives remove PS.tools.vy.z
scoreboard objectives remove PS.tools.vz.x
scoreboard objectives remove PS.tools.vz.y
scoreboard objectives remove PS.tools.vz.z
scoreboard objectives remove PS.tools.ready
scoreboard objectives remove PS.tools.freemd
scoreboard objectives remove PS.tools.p.x
scoreboard objectives remove PS.tools.p.y
scoreboard objectives remove PS.tools.p.z
scoreboard objectives remove PS.tools.wkpath
scoreboard objectives remove PS.tools.wka
scoreboard objectives remove PS.tools.wkp

scoreboard objectives remove PS.path.id
scoreboard objectives remove PS.path.a.id
scoreboard objectives remove PS.path.p.id
scoreboard objectives remove PS.path.p.x
scoreboard objectives remove PS.path.p.y
scoreboard objectives remove PS.path.p.z
scoreboard objectives remove PS.path.h1.x
scoreboard objectives remove PS.path.h1.y
scoreboard objectives remove PS.path.h1.z
scoreboard objectives remove PS.path.h2.x
scoreboard objectives remove PS.path.h2.y
scoreboard objectives remove PS.path.h2.z

scoreboard objectives remove PS.color.r
scoreboard objectives remove PS.color.g
scoreboard objectives remove PS.color.b
scoreboard objectives remove PS.color.a
scoreboard objectives remove PS.color.r1
scoreboard objectives remove PS.color.g1
scoreboard objectives remove PS.color.b1
scoreboard objectives remove PS.color.a1
scoreboard objectives remove PS.color.r2
scoreboard objectives remove PS.color.g2
scoreboard objectives remove PS.color.b2
scoreboard objectives remove PS.color.a2
scoreboard objectives remove PS.color.rawid
scoreboard objectives remove PS.color.rawtk

scoreboard objectives remove PS.players.id
scoreboard objectives remove PS.players.owner

scoreboard objectives remove PS.ctrl.id

scoreboard objectives remove PS.key.sft
scoreboard objectives remove PS.key.sft.cd
scoreboard objectives remove PS.key.sft.s
scoreboard objectives remove PS.key.lmb.on
scoreboard objectives remove PS.key.lmb
scoreboard objectives remove PS.key.rmb
scoreboard objectives remove PS.key.rmb.cd
scoreboard objectives remove PS.key.rmb.s
scoreboard objectives remove PS.key.q

scoreboard objectives remove PS.tps.show
#endregion

#region values
scoreboard players set $focus.menu.dist.max PS.sys 16
scoreboard players set $color.maxraw PS.sys 100
scoreboard players set $tps.maxmem PS.sys 10

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

scoreboard players remove $players.id.max PS.players.id 0
scoreboard players remove $ctrl.id.max PS.ctrl.id 0
#endregion

#region teams
team remove ps.blue
team modify ps.blue color blue
team remove ps.red
team modify ps.red color red
team remove ps.gold
team modify ps.gold color gold
team remove ps.yellow
team modify ps.yellow color yellow
team remove ps.gray
team modify ps.gray color gray
team remove ps.dark_gray
team modify ps.dark_gray color dark_gray
team remove ps.green
team modify ps.green color green
team remove ps.aqua
team modify ps.aqua color aqua
team remove ps.white
team modify ps.white color white
team remove ps.light_purple
team modify ps.light_purple color light_purple
#endregion

#tools
setblock 29999999 5 3006 minecraft:air

#players
setblock 29999999 6 3006 minecraft:air

#tps
bossbar remove ps:tps
setblock 29999999 5 3007 air

#markers
kill @e[tag=PS.]