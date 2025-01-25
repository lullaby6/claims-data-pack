scoreboard players reset @s get_player_id

tellraw @s [{"color":"gray","text":"Your player ID is: "},{"color":"green","score":{"name":"@s","objective":"claims.player.id"}}]

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2