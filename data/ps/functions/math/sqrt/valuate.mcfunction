execute if score $math.sqrt.in PS.mem matches 2..15 run scoreboard players set $math.sqrt.out PS.mem 4
execute if score $math.sqrt.in PS.mem matches 16..255 run scoreboard players set $math.sqrt.out PS.mem 16
execute if score $math.sqrt.in PS.mem matches 256..4095 run scoreboard players set $math.sqrt.out PS.mem 64
execute if score $math.sqrt.in PS.mem matches 4096..65535 run scoreboard players set $math.sqrt.out PS.mem 256
execute if score $math.sqrt.in PS.mem matches 65536..1048575 run scoreboard players set $math.sqrt.out PS.mem 1024
execute if score $math.sqrt.in PS.mem matches 1048576..16777215 run scoreboard players set $math.sqrt.out PS.mem 4096
execute if score $math.sqrt.in PS.mem matches 16777216..268435455 run scoreboard players set $math.sqrt.out PS.mem 16384
execute if score $math.sqrt.in PS.mem matches 268435456.. run scoreboard players set $math.sqrt.out PS.mem 65536