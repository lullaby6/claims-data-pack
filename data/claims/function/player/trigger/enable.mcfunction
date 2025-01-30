scoreboard players enable @a claim_show_id
scoreboard players enable @a[tag=!claims.player.claim] claim_create
scoreboard players enable @a[tag=claims.player.claim] claim_delete
scoreboard players enable @a[tag=claims.player.claim] claim_invite
scoreboard players enable @a[tag=claims.player.claim] claim_kick
execute if score teleport claims.settings matches 1 run scoreboard players enable @a[tag=claims.player.claim] claim_teleport