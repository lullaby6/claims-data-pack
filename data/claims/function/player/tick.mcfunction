$execute if score shape claims.settings matches 0 if entity @s[tag=!claims.player.enter] if entity @e[tag=claims.marker.load,distance=..$(radius)] run return run function claims:claim/enter
$execute if score shape claims.settings matches 1 if entity @s[tag=!claims.player.enter] if entity @e[tag=claims.marker.load,dx=$(radius),dy=400,dz=$(radius)] run return run function claims:claim/enter

$execute if score shape claims.settings matches 0 if entity @s[tag=claims.player.enter] unless entity @e[tag=claims.marker.load,distance=..$(radius)] run return run function claims:claim/leave
$execute if score shape claims.settings matches 1 if entity @s[tag=claims.player.enter] unless entity @e[tag=claims.marker.load,dx=$(radius),dy=400,dz=$(radius)] run return run function claims:claim/leave

# say xd