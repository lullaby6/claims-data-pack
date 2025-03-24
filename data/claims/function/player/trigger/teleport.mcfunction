execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged {"trigger":"teleport"}

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load

scoreboard players reset @s claims.teleport
scoreboard players enable @s claims.teleport

execute store result storage claims:teleport id int 1 run scoreboard players get @s claims.player.id

function claims:macro/teleport with storage claims:teleport

data remove storage claims:teleport id

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ .5 1