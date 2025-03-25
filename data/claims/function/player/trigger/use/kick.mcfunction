execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load


execute store result storage claims:check id int 1 run scoreboard players get @s claims.player.id
execute store result score @s claims.player.claim.check run function claims:player/check/claim with storage claims:check
execute if score @s claims.player.claim.check matches 0 run return run function claims:claim/cancel/not_claim


execute if score @s claims.player.id = @s claims.kick run return run function claims:claim/cancel/kick/not_yourself

execute store result storage claims:kick data.claim_id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:kick data.player_id int 1 run scoreboard players get @s claims.kick

execute store result score @s claims.player.claim.kick run function claims:player/check/exist with storage claims:kick data
execute if score @s claims.player.claim.kick matches 0 run return run function claims:claim/cancel/kick/not_exist

execute store result score @s claims.player.claim.kick run function claims:player/check/invited with storage claims:kick data
execute if score @s claims.player.claim.kick matches 0 run return run function claims:claim/cancel/kick/not_invited

function claims:claim/kick with storage claims:kick data


function claims:player/trigger/check

function claims:message/claim/kick with storage claims:main