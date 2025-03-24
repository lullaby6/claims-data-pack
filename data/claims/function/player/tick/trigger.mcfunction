execute if score @s claims.show_id matches 1.. run function claims:player/trigger/show_id
execute if score @s claims.create matches 1.. align xyz run function claims:player/trigger/create with storage claims:main
execute if score @s claims.delete matches 1.. run function claims:player/trigger/delete
execute if score @s claims.invite matches 1.. run function claims:player/trigger/invite
execute if score @s claims.kick matches 1.. run function claims:player/trigger/kick
execute if score @s claims.teleport matches 1.. run function claims:player/trigger/teleport