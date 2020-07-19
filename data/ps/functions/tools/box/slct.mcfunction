scoreboard players set @s PS.focus.fix 0
execute store result score $players.actionbar.showwhd PS.mem run data get storage ps:players storage.data.tools.box.showwhd
execute store result score $players.actionbar.postype PS.mem run data get storage ps:players storage.data.tools.box.postype
execute if data storage ps:players storage.data.tools.box{ready:1b} run function ps:tools/box/read
