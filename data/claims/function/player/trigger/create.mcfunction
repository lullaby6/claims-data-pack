execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged {"trigger":"create"}

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load

scoreboard players reset @s claims.create


execute if dimension minecraft:the_nether if score nether claims.config matches 0 run return run function claims:claim/create/cancel/nether
execute if dimension minecraft:the_end if score end claims.config matches 0 run return run function claims:claim/create/cancel/end

$execute if score shape claims.config matches 0 if entity @e[tag=claims.claim,distance=..$(radius_double)] run return run function claims:claim/create/cancel/radius with storage claims:main
$execute if score shape claims.config matches 1 positioned ~-$(radius_double) ~-$(radius_double) ~-$(radius_double) if entity @e[tag=claims.claim,dx=$(radius_quadruple_minus_one),dy=$(radius_quadruple_minus_one),dz=$(radius_quadruple_minus_one)] positioned ~$(radius_double) ~$(radius_double) ~$(radius_double) run return run function claims:claim/create/cancel/radius with storage claims:main

# execute if entity @e[tag=claims.marker.no_claim_zone] run function claims:claim/create/no_claim_zone/player
# execute if score @s claims.player.no_claim_zone matches 1.. run return run function claims:claim/create/no_claim_zone/cancel with storage claims:no_claim_zone


execute store result storage claims:create id int 1 run scoreboard players get @s claims.player.id
function claims:claim/create with storage claims:create
data remove storage claims:create id


execute store result score @s claims.player.claim.x run data get entity @s Pos[0]
execute store result score @s claims.player.claim.y run data get entity @s Pos[1]
execute store result score @s claims.player.claim.z run data get entity @s Pos[2]

scoreboard players enable @s claims.delete
scoreboard players enable @s claims.invite
scoreboard players enable @s claims.kick
scoreboard players enable @s claims.teleport

function claims:message/claim/create with storage claims:main

execute if dimension minecraft:overworld run return run scoreboard players set @s claims.player.claim.dimension 1
execute if dimension minecraft:the_nether run return run scoreboard players set @s claims.player.claim.dimension 2
execute if dimension minecraft:the_end run return run scoreboard players set @s claims.player.claim.dimension 3