execute if score load auth.config matches 1 unless entity @s[tag=auth.logged] run return run function claims:player/trigger/cancel/auth_not_logged {"trigger":"invite"}

execute unless score @s claims.player.id matches 1.. run return run function claims:player/load


execute if score @s claims.player.id = @s claims.invite run return run function claims:claim/invite/cancel/not_yourself

execute store result storage claims:invite data.id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:invite data.invited_id int 1 run scoreboard players get @s claims.invite

execute store result score @s claims.player.invite run function claims:claim/invite/check/exist with storage claims:invite data
execute if score @s claims.player.invite matches 0 run return run function claims:claim/invite/cancel/not_exist

execute store result score @s claims.player.invite run function claims:claim/invite/check/already with storage claims:invite data
execute if score @s claims.player.invite matches 1 run return run function claims:claim/invite/cancel/already_invited

function claims:claim/invite with storage claims:invite data

data remove storage claims:invite data


scoreboard players reset @s claims.invite
scoreboard players reset @s claims.player.invite
scoreboard players enable @s claims.invite

function claims:message/claim/invite with storage claims:main