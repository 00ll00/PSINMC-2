#as player
summon armor_stand 29999984 0 2992 {"Tags": ["PS.players.data", "PS.players.data_", "PS.players.owned", "PS.players.belonging"], "Marker": 1, "Invisible": 1, "ArmorItems": [{"id": "minecraft:stone", "Count": 1, "tag": {"PS_players_data": {"tools": {"cube": {"state": "dn_new", "showwhd": 0, "postype": 1, "ready": 0, "freemode": 0, "pos1": [0, 0, 0], "pos2": [0, 0, 0], "whd": [1, 1, 1], "vx": [1, 0, 0], "vy": [0, 1, 0], "vz": [0, 0, 1]}, "cube_last": {"state": "dn_new", "showwhd": 0, "postype": 1, "ready": 0, "freemode": 0, "pos1": [0, 0, 0], "pos2": [0, 0, 0], "whd": [1, 1, 1], "vx": [1, 0, 0], "vy": [0, 1, 0], "vz": [0, 0, 1]}, "sphere": {"state": "dn_new", "showr": 0, "postype": 1, "ready": 0, "freemode": 0, "startAt": "x", "pos1": [0, 0, 0], "pos2": [0, 0, 0], "whd": [1, 1, 1], "r": 1, "vx": [1, 0, 0], "vy": [0, 1, 0], "vz": [0, 0, 1]}, "sphere_last": {"state": "dn_new", "showr": 0, "postype": 1, "ready": 0, "freemode": 0, "startAt": "x", "pos1": [0, 0, 0], "pos2": [0, 0, 0], "whd": [1, 1, 1], "r": 1, "vx": [1, 0, 0], "vy": [0, 1, 0], "vz": [0, 0, 1]}}}}}, {}, {}, {}]}
scoreboard players operation @e[tag=PS.players.data_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.players.data_] remove PS.players.data_