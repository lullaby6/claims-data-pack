execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load

function claims:player/trigger/check

function claims:message/show_id with storage claims:main