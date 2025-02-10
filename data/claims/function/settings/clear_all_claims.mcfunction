scoreboard players reset @a claim_delete

execute as @a at @s run function claims:player/delete_claim

execute as @e[tag=claims.marker] run function claims:marker/delete

tag @a remove claims.player.claim
tag @a remove claims.player.claim.load

execute as @a run trigger claim_invite add 0
execute as @a run trigger claim_kick add 0
execute as @a run trigger claim_teleport add 0

scoreboard players reset @a claims.player.claim.x
scoreboard players reset @a claims.player.claim.y
scoreboard players reset @a claims.player.claim.z
scoreboard players reset @a claims.player.claim.dimension

function claims:settings