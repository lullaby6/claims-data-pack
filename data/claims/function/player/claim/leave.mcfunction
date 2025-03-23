execute if score sounds claims.config matches 1 run playsound minecraft:block.wooden_door.close master @s ~ ~ ~ .5 2

# execute store result storage claims:leave data.player_id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:leave id int 1 run scoreboard players get @n[tag=claims.claim] claims.claim.id
# execute store result storage claims:leave data.radius_double int 1 run data get storage claims:main radius_double
# execute store result storage claims:leave data.radius_quadruple_minus_one int 1 run data get storage claims:main radius_quadruple_minus_one

function claims:claim/player/leave with storage claims:leave

data remove storage claims:leave id

scoreboard players reset @s claims.player.claim.inside

attribute @s minecraft:block_interaction_range base reset