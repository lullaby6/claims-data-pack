execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged {"trigger":"kick"}

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load


execute if score @s claims.player.id = @s claims.kick run return run function claims:claim/kick/cancel/not_yourself

execute store result storage claims:kick data.id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:kick data.kicked_id int 1 run scoreboard players get @s claims.kick

execute store result score @s claims.player.claim.kick run function claims:claim/kick/check/exist with storage claims:kick data
execute if score @s claims.player.claim.kick matches 1 run return run function claims:claim/kick/cancel/not_exist

execute store result score @s claims.player.claim.kick run function claims:claim/kick/check/invited with storage claims:kick data
execute if score @s claims.player.claim.kick matches 1 run return run function claims:claim/kick/cancel/not_invited

function claims:claim/kick with storage claims:kick data

data remove storage claims:kick data


scoreboard players reset @s claims.kick
scoreboard players reset @s claims.player.claim.kick
scoreboard players enable @s claims.kick

function claims:message/claim/kick with storage claims:main