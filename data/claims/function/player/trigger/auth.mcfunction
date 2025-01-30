execute as @a[tag=!auth.logged] run trigger claim_create add 0
execute as @a[tag=!auth.logged] run trigger claim_delete add 0
execute as @a[tag=!auth.logged] run trigger claim_invite add 0
execute as @a[tag=!auth.logged] run trigger claim_kick add 0
execute as @a[tag=!auth.logged] run trigger claim_teleport add 0

scoreboard players enable @a claim_show_id
scoreboard players enable @a[tag=auth.logged,tag=!claims.player.claim] claim_create
scoreboard players enable @a[tag=auth.logged,tag=claims.player.claim] claim_delete
scoreboard players enable @a[tag=auth.logged,tag=claims.player.claim] claim_invite
scoreboard players enable @a[tag=auth.logged,tag=claims.player.claim] claim_kick
execute if score teleport claims.settings matches 1 run scoreboard players enable @a[tag=auth.logged,tag=claims.player.claim] claim_teleport