$execute if entity @s[tag=!claims.player.enter] if entity @e[tag=claims.marker.load,distance=..$(radius)] run return run function claims:claim/enter

$execute if entity @s[tag=claims.player.enter] unless entity @e[tag=claims.marker.load,distance=..$(radius)] run function claims:claim/leave