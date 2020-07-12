#as color owner

scoreboard players operation #color.mix PS.color.r = $color.r PS.mem
scoreboard players operation #color.mix PS.color.g = $color.g PS.mem
scoreboard players operation #color.mix PS.color.b = $color.b PS.mem
scoreboard players operation #color.mix PS.color.r *= #shapemix.a PS.mem
scoreboard players operation #color.mix PS.color.g *= #shapemix.a PS.mem
scoreboard players operation #color.mix PS.color.b *= #shapemix.a PS.mem
scoreboard players operation #color.mix PS.color.a = #shapemix.a PS.mem

scoreboard players set #color.mix PS.color.a 8
scoreboard players operation #color.mix PS.color.a -= #shapemix.a PS.mem
scoreboard players operation @s PS.color.r *= #color.mix PS.color.a
scoreboard players operation @s PS.color.g *= #color.mix PS.color.a
scoreboard players operation @s PS.color.b *= #color.mix PS.color.a
scoreboard players operation @s PS.color.r += #color.mix PS.color.r
scoreboard players operation @s PS.color.g += #color.mix PS.color.g
scoreboard players operation @s PS.color.b += #color.mix PS.color.b
scoreboard players operation @s PS.color.r /= $8 PS.const
scoreboard players operation @s PS.color.g /= $8 PS.const
scoreboard players operation @s PS.color.b /= $8 PS.const
