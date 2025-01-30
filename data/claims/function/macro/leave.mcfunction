$execute if score shape claims.settings matches 0 if entity @e[tag=claims.marker.$(id),distance=..$(radius_double)] run return run function claims:claim/leave/own
$execute if score shape claims.settings matches 1 if entity @e[tag=claims.marker.$(id),dx=$(radius_double),dy=400,dz=$(radius_double)] run return run function claims:claim/leave/own

$execute if entity @s[tag=claims.player.invited.$(claim_id)] run return run function claims:claim/leave/invited

function claims:claim/leave/other