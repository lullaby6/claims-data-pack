execute if score @s claims.player.id = @s invite_player_by_id run return run function claims:claim/invite/not_yourself

execute store result storage claims:invite id int 1 run scoreboard players get @s claims.player.id
execute store result storage claims:invite invited_id int 1 run scoreboard players get @s invite_player_by_id

execute store result score @s claims.player.invite run function claims:macro/invite_exist with storage claims:invite
execute if score @s claims.player.invite matches 0 run return run function claims:claim/invite/not_exist

function claims:macro/invite with storage claims:invite

data remove storage claims:invite id
data remove storage claims:invite invited_id

scoreboard players reset @s invite_player_by_id

tellraw @s [{"color":"gray","text":"The player has been invited to the claim successfully."}]

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2