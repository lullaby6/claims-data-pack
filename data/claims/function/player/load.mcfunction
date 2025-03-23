execute if entity @e[tag=claims.claim] if score @s claims.player.id matches 1.. at @s as @e[tag=claims.claim] if score @s claims.claim.id = @p claims.player.id run function claims:player/trigger/delete

scoreboard players add . claims.player.id 1

execute store result score @s claims.player.id run scoreboard players get . claims.player.id

execute store result storage claims:id id int 1 run scoreboard players get @s claims.player.id
function claims:player/id with storage claims:id
data remove storage claims:id id

scoreboard players enable @s claims.show_id
scoreboard players enable @s claims.create

scoreboard players reset @s claims.player.claim.x
scoreboard players reset @s claims.player.claim.y
scoreboard players reset @s claims.player.claim.z
scoreboard players reset @s claims.player.claim.dimension
scoreboard players reset @s claims.player.claim.inside
scoreboard players reset @s claims.player.claim.invite
scoreboard players reset @s claims.player.claim.remove

scoreboard players reset @s claims.delete
scoreboard players reset @s claims.invite
scoreboard players reset @s claims.kick
scoreboard players reset @s claims.teleport

trigger claims.delete add 0
trigger claims.invite add 0
trigger claims.kick add 0
trigger claims.teleport add 0