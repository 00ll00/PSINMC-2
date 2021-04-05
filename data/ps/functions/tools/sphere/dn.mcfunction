#as player
execute if data storage ps:players storage.data.tools.sphere{state:"dn_new"} run function ps:tools/sphere/dn/new
execute if data storage ps:players storage.data.tools.sphere{state:"dn_old"} at 0-0110-5053-0-1 align xyz run function ps:tools/sphere/dn/old
execute if data storage ps:players storage.data.tools.sphere{state:"build"} run function ps:tools/sphere/dn/pause