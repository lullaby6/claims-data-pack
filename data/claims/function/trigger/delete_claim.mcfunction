scoreboard players reset @s delete_claim

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2

tellraw @s [{"color":"gray","text":"Claim delete successfully."}]

execute store result storage claims:delete id int 1 run scoreboard players get @s claims.player.id
function claims:macro/delete_claim with storage claims:delete
data remove storage claims:delete id

execute as @e[tag=claims.marker.load] if score @s claims.marker.id = @p[tag=claims.player.claim.load,distance=..0.1] claims.player.id at @s run function claims:marker/delete

tag @s remove claims.player.claim
tag @s remove claims.player.claim.load

trigger claim_invite add 0
trigger claim_kick add 0