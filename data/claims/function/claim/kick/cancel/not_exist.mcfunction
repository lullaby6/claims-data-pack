scoreboard players reset @s claims.kick
scoreboard players enable @s claims.kick
scoreboard players reset @s claims.player.kick

data remove storage claims:kick data

function claims:message/claim/kick/cancel/not_exist with storage claims:main