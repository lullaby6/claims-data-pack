execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load


execute store result storage claims:check id int 1 run scoreboard players get @s claims.player.id
execute store result score @s claims.player.claim.check run function claims:player/check/claim with storage claims:check
execute if score @s claims.player.claim.check matches 1 run return run function claims:claim/cancel/already_claim


execute if dimension minecraft:the_nether if score nether claims.config matches 0 run return run function claims:claim/cancel/create/nether
execute if dimension minecraft:the_end if score end claims.config matches 0 run return run function claims:claim/cancel/create/end

$execute if score shape claims.config matches 0 if entity @e[tag=claims.claim,distance=..$(radius_double)] run return run function claims:claim/cancel/create/radius with storage claims:main
$execute if score shape claims.config matches 1 positioned ~-$(radius_double) ~-$(radius_double) ~-$(radius_double) if entity @e[tag=claims.claim,dx=$(radius_quadruple_minus_one),dy=$(radius_quadruple_minus_one),dz=$(radius_quadruple_minus_one)] positioned ~$(radius_double) ~$(radius_double) ~$(radius_double) run return run function claims:claim/cancel/create/radius with storage claims:main

# execute if entity @e[tag=claims.marker.no_claim_zone] run function claims:claim/create/no_claim_zone/player
# execute if score @s claims.player.no_claim_zone matches 1.. run return run function claims:claim/create/no_claim_zone/cancel with storage claims:no_claim_zone


execute store result storage claims:create id int 1 run scoreboard players get @s claims.player.id
function claims:claim/create with storage claims:create


function claims:player/trigger/check

function claims:message/claim/create with storage claims:main