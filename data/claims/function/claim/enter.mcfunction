execute if score sounds claims.settings matches 1 at @s run playsound minecraft:block.wooden_door.open master @s ~ ~ ~ .5 2

execute store result storage claims:enter id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:enter claim_id int 1 run scoreboard players get @n[tag=claims.marker.load] claims.marker.id
execute store result storage claims:enter radius int 1 run data get storage claims:settings radius
function claims:macro/enter with storage claims:enter
data remove storage claims:enter id
data remove storage claims:enter claim_id
data remove storage claims:enter radius

tag @s add claims.player.enter