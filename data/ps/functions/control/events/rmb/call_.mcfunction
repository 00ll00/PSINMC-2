#as focused component
#with tag ctrl.active (components)
#under order

#components
#   slider
execute as @s[tag=PS.ctrl.sld.s] run function ps:control/components/slider/call
#   color picker
execute as @s[tag=PS.ctrl.clrpk.bc] run function ps:control/components/clrpicker/call_c
execute as @s[tag=PS.ctrl.clrpk.sr] run function ps:control/components/clrpicker/call_r
execute as @s[tag=PS.ctrl.clrpk.sg] run function ps:control/components/clrpicker/call_g
execute as @s[tag=PS.ctrl.clrpk.sb] run function ps:control/components/clrpicker/call_b
execute as @s[tag=PS.ctrl.clrpk.sa] run function ps:control/components/clrpicker/call_a

#controls
#   btn_focus_attach
execute as @s[tag=PS.ctrl.mode.attach] run function ps:control/btn_focus_attach/call
#   btn_focus_fixed
execute as @s[tag=PS.ctrl.mode.fixed] run function ps:control/btn_focus_fixed/call
#   btn_focus_vect
execute as @s[tag=PS.ctrl.mode.vect] run function ps:control/btn_focus_vect/call
#   btn_tools_hollow
execute as @s[tag=PS.ctrl.mode.hollow] run function ps:control/btn_tools_hollow/call
#   clrpk_c1c2
execute if score $ctrl.clrpk.clr PS.mem matches 0 as @s[tag=PS.ctrl.clrpk.sr] run scoreboard players operation @a[tag=PS.players.op] PS.color.r1 = $ctrl.clrpk.r PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 as @s[tag=PS.ctrl.clrpk.sg] run scoreboard players operation @a[tag=PS.players.op] PS.color.g1 = $ctrl.clrpk.g PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 as @s[tag=PS.ctrl.clrpk.sb] run scoreboard players operation @a[tag=PS.players.op] PS.color.b1 = $ctrl.clrpk.b PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 0 as @s[tag=PS.ctrl.clrpk.sa] run scoreboard players operation @a[tag=PS.players.op] PS.color.a1 = $ctrl.clrpk.a PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 as @s[tag=PS.ctrl.clrpk.sr] run scoreboard players operation @a[tag=PS.players.op] PS.color.r2 = $ctrl.clrpk.r PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 as @s[tag=PS.ctrl.clrpk.sg] run scoreboard players operation @a[tag=PS.players.op] PS.color.g2 = $ctrl.clrpk.g PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 as @s[tag=PS.ctrl.clrpk.sb] run scoreboard players operation @a[tag=PS.players.op] PS.color.b2 = $ctrl.clrpk.b PS.mem
execute if score $ctrl.clrpk.clr PS.mem matches 1 as @s[tag=PS.ctrl.clrpk.sa] run scoreboard players operation @a[tag=PS.players.op] PS.color.a2 = $ctrl.clrpk.a PS.mem