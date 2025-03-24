scoreboard players reset @s claims.invite
scoreboard players enable @s claims.invite
scoreboard players reset @s claims.player.invite

data remove storage claims:invite data

function claims:message/claim/invite/cancel/already_invited with storage claims:main