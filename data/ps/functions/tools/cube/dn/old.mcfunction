#as player at focus marker align xyz
scoreboard players set #tools.cube.dn.temp PS.mem 0
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.xyz,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_xyz"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.xy,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_xy"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.xz,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_xz"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.yz,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_yz"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.x,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_x"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.y,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_y"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.z,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_z"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 0 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.o,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_o"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 1 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.x,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_x"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 1 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.y,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_y"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 1 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.z,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_z"
execute if score #tools.cube.dn.temp PS.mem matches 0 if score @s PS.tools.freemd matches 1 store success score #tools.cube.dn.temp PS.mem if entity @e[tag=PS.ctrl.gizmo.o,dx=0,dy=0,dz=0,tag=PS.players.belonging] run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_o"
execute if score #tools.cube.dn.temp PS.mem matches 1 run data modify storage ps:players storage.needwrite set value 1b