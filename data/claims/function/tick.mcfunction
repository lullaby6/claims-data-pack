execute store result storage claims:settings radius int 1 run scoreboard players get radius claims.settings
execute store result storage claims:settings radius_double int 2 run scoreboard players get radius claims.settings
execute store result storage claims:settings particles_radius int 1 run scoreboard players get particles_radius claims.settings
execute store result storage claims:settings radius_particles_speed int 1 run scoreboard players get radius_particles_speed claims.settings

execute store result score third claims.settings run scoreboard players get radius claims.settings
scoreboard players operation third claims.settings *= 3 claims.consts
scoreboard players operation third claims.settings /= 2 claims.consts
execute store result storage claims:settings radius_third int 1 run scoreboard players get third claims.settings

execute store result score half claims.settings run scoreboard players get radius claims.settings
scoreboard players operation half claims.settings /= 2 claims.consts
execute store result storage claims:settings radius_half int 1 run scoreboard players get half claims.settings

execute as @a[tag=!claims.player.load] run function claims:player/load

scoreboard players enable @a claim_show_id
scoreboard players enable @a[tag=!claims.player.claim] claim_create
scoreboard players enable @a[tag=claims.player.claim] claim_delete
scoreboard players enable @a[tag=claims.player.claim] claim_invite
scoreboard players enable @a[tag=claims.player.claim] claim_kick
execute if score teleport claims.settings matches 1 run scoreboard players enable @a[tag=claims.player.claim] claim_teleport

execute as @a if score @s claim_show_id matches 1.. run function claims:trigger/claim_show_id
execute as @a if score @s claim_create matches 1.. at @s run function claims:trigger/claim_create with storage claims:settings
execute as @a if score @s claim_delete matches 1.. at @s run function claims:trigger/claim_delete
execute as @a if score @s claim_invite matches 1.. at @s run function claims:trigger/claim_invite
execute as @a if score @s claim_kick matches 1.. at @s run function claims:trigger/claim_kick
execute as @a if score @s claim_teleport matches 1.. at @s run function claims:trigger/claim_teleport

execute as @a at @s run function claims:player/tick with storage claims:settings
execute as @e[tag=claims.marker.load] at @s run function claims:marker/tick