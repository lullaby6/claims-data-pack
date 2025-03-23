execute if score sounds claims.config matches 1 run playsound minecraft:block.wooden_door.open master @s ~ ~ ~ .5 2

# execute store result storage claims:join data.player_id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:join id int 1 run scoreboard players get @n[tag=claims.claim] claims.claim.id
# execute store result storage claims:join data.radius int 1 run data get storage claims:main radius
# execute store result storage claims:join data.radius_double_minus_one int 1 run data get storage claims:main radius_double_minus_one

function claims:claim/player/join with storage claims:join

data remove storage claims:join id

execute store result score @s claims.player.claim.inside run scoreboard players get @n[tag=claims.claim] claims.claim.id