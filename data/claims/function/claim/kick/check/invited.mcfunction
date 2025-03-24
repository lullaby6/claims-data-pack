$execute if entity @a[scores={claims.player.id=$(kicked_id)},tag=claims.player.invited.$(id)] run return 1

return 0