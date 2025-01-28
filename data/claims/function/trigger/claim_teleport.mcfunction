scoreboard players reset @s claim_teleport

execute store result storage claims:teleport id int 1 run scoreboard players get @s claims.player.id

function claims:macro/teleport with storage claims:teleport

data remove storage claims:teleport id

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ .5 2