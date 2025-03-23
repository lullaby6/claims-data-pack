execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged {"trigger":"show_id"}

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load

scoreboard players reset @s claims.show_id
scoreboard players enable @s claims.show_id

function claims:message/show_id with storage claims:main