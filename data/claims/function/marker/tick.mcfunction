function claims:marker/particles/center with storage claims:config

execute if score radius_particles claims.config matches 1 if score shape claims.config matches 0 run function claims:marker/particles/radius with storage claims:config
execute if score radius_particles claims.config matches 1 if score shape claims.config matches 1 run function claims:marker/particles/square with storage claims:config

execute if score beacon_particles claims.config matches 1 run function claims:marker/particles/beacon with storage claims:config

execute if score kill_tnt claims.config matches 1 run function claims:marker/kill_tnt with storage claims:config

execute if score disable_creepers claims.config matches 1 run function claims:marker/disable_creepers with storage claims:config