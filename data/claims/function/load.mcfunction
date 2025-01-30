scoreboard objectives add claim_show_id trigger
scoreboard objectives add claim_create trigger
scoreboard objectives add claim_delete trigger
scoreboard objectives add claim_invite trigger
scoreboard objectives add claim_kick trigger
scoreboard objectives add claim_join trigger
scoreboard objectives add claim_teleport trigger

scoreboard objectives add claims.settings dummy
execute unless score load claims.settings matches 1 run function claims:settings/reset

scoreboard objectives add claims.consts dummy
scoreboard players set 2 claims.consts 2
scoreboard players set 3 claims.consts 3

scoreboard objectives add claims.player.id dummy
execute unless score .id claims.player.id matches 1.. run scoreboard players set .id claims.player.id 1
scoreboard objectives add claims.marker.id dummy

scoreboard objectives add claims.player.invite dummy
scoreboard objectives add claims.player.remove dummy

scoreboard objectives add claims.player.claim.x dummy
scoreboard objectives add claims.player.claim.y dummy
scoreboard objectives add claims.player.claim.z dummy
scoreboard objectives add claims.player.dimension dummy