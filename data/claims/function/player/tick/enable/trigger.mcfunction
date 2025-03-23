data remove storage claims:enable data

scoreboard players enable @s claims.show_id

$execute if entity @e[tag=claims.claim.$(id)] run return run function claims:player/tick/enable/claim

scoreboard players enable @s claims.create

trigger claims.delete add 0
trigger claims.invite add 0
trigger claims.kick add 0
trigger claims.telepo add 0