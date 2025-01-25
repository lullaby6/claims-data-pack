scoreboard players reset @s create_claim

$execute if entity @e[tag=claims.marker.load,distance=..$(radius_double)] run return run function claims:claim/cancel with storage claims:settings

tellraw @s [{"color":"gray","text":"Claim created successfully."}]

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2

tag @s add claims.player.claim

summon marker ~ ~ ~ {Tags:["claims.marker"]}

execute store result storage claims:create id int 1 run scoreboard players get @s claims.player.id
function claims:macro/create_claim with storage claims:create
data remove storage claims:create id

execute store result score @n[tag=claims.marker,tag=!claims.marker.load] claims.marker.id run scoreboard players get @p[tag=claims.player.claim,tag=!claims.player.claim.load,distance=..0.1] claims.player.id

tag @n[tag=claims.marker,tag=!claims.marker.load] add claims.marker.load
tag @s add claims.player.claim.load

execute at @n[tag=claims.marker.load] run forceload add ~ ~