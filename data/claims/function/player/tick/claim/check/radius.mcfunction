$execute if entity @e[tag=claims.claim,distance=..$(radius)] run return run function claims:player/tick/claim/inside with storage claims:main

execute if entity @s[scores={claims.player.claim.inside=1..}] run function claims:player/claim/leave