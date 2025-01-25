$execute if entity @e[tag=claims.marker.$(id),distance=..$(radius_double)] run return run function claims:claim/leave/own

$execute if entity @s[tag=claims.player.invited.$(claim_id)] run return run function claims:claim/leave/invited

function claims:claim/leave/other