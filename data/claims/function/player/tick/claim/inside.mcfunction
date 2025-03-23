execute unless entity @s[scores={claims.player.claim.inside=1..}] run function claims:player/claim/join

execute if entity @s[scores={claims.player.claim.inside=1..}] unless score @s claims.player.claim.inside = @n[tag=claims.claim] claims.claim.id run function claims:player/claim/leave