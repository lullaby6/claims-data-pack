execute store result storage claims:enable data.id int 1 run scoreboard players get @s claims.player.id

execute if score load auth.config matches 1 run return run function claims:player/tick/enable/auth with storage claims:enable data

function claims:player/tick/enable/trigger with storage claims:enable data