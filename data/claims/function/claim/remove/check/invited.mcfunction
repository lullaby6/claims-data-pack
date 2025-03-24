$execute as @a[scores={claims.player.id=$(removed_id)}] if entity @s[tag=claims.player.invited.$(id)] run return 1

return 0