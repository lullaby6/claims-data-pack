function claims:settings/tick

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

# execute as @e[type=minecraft:creeper] positioned 0 0 0 positioned ~5 -100 ~5 if entity @s[dx=5,dy=400,dz=5] run kill @s
# execute as @e[type=minecraft:creeper] positioned 0 0 0 if entity @s[dx=4,dy=400,dz=4] run kill @s

# execute as @e[type=minecraft:creeper] positioned 0 0 0 positioned ~-5 ~-5 ~-5 if entity @s[dx=9,dy=9,dz=9] run kill @s

# execute as @e[type=minecraft:creeper] positioned 0 0 0 positioned ~-6 ~-6 ~-6 if entity @s[dx=11,dy=11,dz=11] run kill @s