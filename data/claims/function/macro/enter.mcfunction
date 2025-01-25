$execute if entity @e[tag=claims.marker.$(id),distance=..$(radius)] run return run function claims:claim/enter/own

$execute if entity @s[tag=claims.player.invited.$(claim_id)] run return run function claims:claim/enter/invited

function claims:claim/enter/other