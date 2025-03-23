execute store result score @s claims.player.id run scoreboard players get . claims.player.id

scoreboard players add . claims.player.id 1

execute store result storage claims:id id int 1 run scoreboard players get @s claims.player.id
function claims:player/id with storage claims:id
data remove storage claims:id id