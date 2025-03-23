$execute if entity @s[tag=auth.logged] run return run function claims:player/tick/enable/trigger {"id":$(id)}

execute unless entity @s[tag=auth.logged] run trigger claims.create add 0
execute unless entity @s[tag=auth.logged] run trigger claims.delete add 0
execute unless entity @s[tag=auth.logged] run trigger claims.invite add 0
execute unless entity @s[tag=auth.logged] run trigger claims.kick add 0
execute unless entity @s[tag=auth.logged] run trigger claims.teleport add 0