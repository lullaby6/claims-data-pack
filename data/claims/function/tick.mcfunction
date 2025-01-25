execute store result storage claims:settings radius int 1 run scoreboard players get radius claims.settings
execute store result storage claims:settings radius_double int 2 run scoreboard players get radius claims.settings
execute store result storage claims:settings particles_radius int 1 run scoreboard players get particles_radius claims.settings
execute store result storage claims:settings radius_particles_speed int 1 run scoreboard players get radius_particles_speed claims.settings

execute as @a[tag=!claims.player.load] run function claims:player/load

scoreboard players enable @a get_player_id
scoreboard players enable @a[tag=!claims.player.claim] create_claim
scoreboard players enable @a[tag=claims.player.claim] delete_claim
scoreboard players enable @a[tag=claims.player.claim] invite_player_by_id
scoreboard players enable @a[tag=claims.player.claim] remove_player_by_id

execute as @a if score @s get_player_id matches 1.. run function claims:trigger/get_player_id
execute as @a if score @s create_claim matches 1.. at @s run function claims:trigger/create_claim with storage claims:settings
execute as @a if score @s delete_claim matches 1.. at @s run function claims:trigger/delete_claim
execute as @a if score @s invite_player_by_id matches 1.. at @s run function claims:trigger/invite_player_by_id
execute as @a if score @s remove_player_by_id matches 1.. at @s run function claims:trigger/remove_player_by_id

execute as @a at @s run function claims:player/tick with storage claims:settings
execute as @e[tag=claims.marker.load] at @s run function claims:marker/tick