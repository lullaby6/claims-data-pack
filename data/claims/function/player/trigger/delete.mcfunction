execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged {"trigger":"delete"}

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load

scoreboard players reset @s claims.delete

function claims:message/claim/delete with storage claims:main

execute store result storage claims:delete id int 1 run scoreboard players get @s claims.player.id
function claims:claim/delete with storage claims:delete
data remove storage claims:delete id

scoreboard players reset @s claims.player.claim.x
scoreboard players reset @s claims.player.claim.y
scoreboard players reset @s claims.player.claim.z
scoreboard players reset @s claims.player.claim.dimension
scoreboard players reset @s claims.player.claim.invite
scoreboard players reset @s claims.player.claim.remove

scoreboard players enable @s claims.create

trigger claims.delete add 0
trigger claims.invite add 0
trigger claims.kick add 0
trigger claims.teleport add 0