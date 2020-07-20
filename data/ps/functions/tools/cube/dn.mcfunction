#as player
execute if data storage ps:players storage.data.tools.cube{state:"dn_new"} run function ps:tools/cube/dn/new
execute if data storage ps:players storage.data.tools.cube{state:"dn_old"} at 0-0110-5053-0-1 align xyz run function ps:tools/cube/dn/old