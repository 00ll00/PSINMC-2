scoreboard players set @s PS.focus.fix 0
execute store result score $players.actionbar.showr PS.mem run data get storage ps:players storage.data.tools.sphere.showr
execute store result score $players.actionbar.postype PS.mem run data get storage ps:players storage.data.tools.sphere.postype
execute if data storage ps:players storage.data.tools.sphere{ready:1b} run function ps:tools/sphere/read
