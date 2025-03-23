function claims:config/delete_all_claims

scoreboard players reset * claims.player.id

advancement revoke @a only claims:tick

function claims:config