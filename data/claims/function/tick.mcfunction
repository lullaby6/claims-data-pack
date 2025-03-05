function claims:settings/tick

function claims:player/trigger/tick

execute as @a if score @s claim_show_id matches 1.. run function claims:trigger/claim_show_id
execute as @a if score @s claim_create matches 1.. at @s align xyz run function claims:trigger/claim_create with storage claims:settings
execute as @a if score @s claim_delete matches 1.. at @s run function claims:trigger/claim_delete
execute as @a if score @s claim_invite matches 1.. at @s run function claims:trigger/claim_invite
execute as @a if score @s claim_kick matches 1.. at @s run function claims:trigger/claim_kick
execute as @a if score @s claim_teleport matches 1.. at @s run function claims:trigger/claim_teleport

execute as @a at @s run function claims:player/tick with storage claims:settings
execute as @e[tag=claims.marker.load] at @s run function claims:marker/tick