scoreboard objectives add claims.config dummy
execute unless score load claims.config matches 1 run function claims:config/load

scoreboard objectives add claims.player.id dummy
scoreboard objectives add claims.player.claim.x dummy
scoreboard objectives add claims.player.claim.y dummy
scoreboard objectives add claims.player.claim.z dummy
scoreboard objectives add claims.player.claim.dimension dummy
scoreboard objectives add claims.player.claim.inside dummy
scoreboard objectives add claims.player.claim.invite dummy
scoreboard objectives add claims.player.claim.kick dummy

scoreboard objectives add claims.show_id trigger
scoreboard objectives add claims.create trigger
scoreboard objectives add claims.delete trigger
scoreboard objectives add claims.invite trigger
scoreboard objectives add claims.kick trigger
scoreboard objectives add claims.join trigger
scoreboard objectives add claims.teleport trigger

scoreboard objectives add claims.claim.id dummy

# scoreboard objectives add claims.player.no_claim_zone dummy
# scoreboard objectives add claims.claim.no_claim_zone dummy