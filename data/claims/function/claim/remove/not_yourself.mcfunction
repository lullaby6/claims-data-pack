scoreboard players reset @s remove_player_by_id

tellraw @s [{"color":"red","text":"You cannot remove yourself."}]

execute at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ .5 2