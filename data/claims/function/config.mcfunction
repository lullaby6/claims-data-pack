tellraw @s [{"text":"==========[ ","color":"gray"},{"text":"Claims","color":"white","bold":true},{"text":" ]==========","color":"gray"}]
tellraw @s [{"color":"gray","text":"Version: "},{"color":"aqua","text":"v2.0.0"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Config:","underlined":true}

tellraw @s ""

tellraw @s [{"color":"gray","text":"- Radius: "},{"color":"aqua","bold":true,"score":{"name":"radius","objective":"claims.config"},"hoverEvent":{"action":"show_text","value":[{"text":"To change click or run: /scoreboard players set radius claims.config <ticks>"}]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set radius claims.config "}}]

execute if score shape claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Shape: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/shape/circle"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to change the shape to radius"}]},"text":"SQUARE"}]
execute if score shape claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Shape: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/shape/square"},"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to change the shape to square"}]},"text":"RADIUS"}]

execute if score beacon_particles claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Beacon Particles: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/beacon_particles/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable beacon particles"}]},"text":"ENABLED"}]
execute if score beacon_particles claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Beacon Particles: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/beacon_particles/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable beacon particles"}]},"text":"DISABLED"}]

execute if score radius_particles claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Radius Particles: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/radius_particles/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable radius particles"}]},"text":"ENABLED"}]
execute if score radius_particles claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Radius Particles: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/radius_particles/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable radius particles"}]},"text":"DISABLED"}]

execute if score radius_particles claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Particles Radius Difference: "},{"color":"aqua","bold":true,"score":{"name":"radius_particles_diff","objective":"claims.config"},"hoverEvent":{"action":"show_text","value":[{"text":"To change click or run: /scoreboard players set radius_particles_diff claims.config <ticks>"}]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set radius_particles_diff claims.config "}}]

execute if score radius_particles claims.config matches 1 if score shape claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Radius Particles Speed: "},{"color":"aqua","bold":true,"score":{"name":"radius_particles_speed","objective":"claims.config"},"hoverEvent":{"action":"show_text","value":[{"text":"To change click or run: /scoreboard players set radius_particles_speed claims.config <ticks>"}]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set radius_particles_speed claims.config "}}]

execute if score teleport claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Teleport: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/teleport/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable teleport"}]},"text":"ENABLED"}]
execute if score teleport claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Teleport: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/teleport/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable teleport"}]},"text":"DISABLED"}]

execute if score nether claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Nether: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/nether/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable nether"}]},"text":"ENABLED"}]
execute if score nether claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Nether: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/nether/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable nether"}]},"text":"DISABLED"}]

execute if score end claims.config matches 1 run tellraw @s [{"color":"gray","text":"- End: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/end/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable end"}]},"text":"ENABLED"}]
execute if score end claims.config matches 0 run tellraw @s [{"color":"gray","text":"- End: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/end/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable end"}]},"text":"DISABLED"}]

execute if score kill_tnt claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Kill TNT Inside Claims: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/kill_tnt/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable kill TNT inside claims"}]},"text":"ENABLED"}]
execute if score kill_tnt claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Kill TNT Inside Claims: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/kill_tnt/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable kill TNT inside claims"}]},"text":"DISABLED"}]

execute if score disable_creepers claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Creepers Inside Claims: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/disable_creepers/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable creepers inside claims"}]},"text":"ENABLED"}]
execute if score disable_creepers claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Creepers Inside Claims: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/disable_creepers/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable creepers inside claims"}]},"text":"DISABLED"}]

# execute if score auto_join claims.config matches 1 run tellraw @s [{"text":"- Auto Join on Invite: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:config/auto_join/no"}}]
# execute if score auto_join claims.config matches 0 run tellraw @s [{"text":"- Auto Join on Invite: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:config/auto_join/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score list claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Show Player ID in List: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/list/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable show player ID in list"}]},"text":"ENABLED"}]
execute if score list claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Show Player ID in List: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/list/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable show player ID in list"}]},"text":"DISABLED"}]

execute if score sounds claims.config matches 1 run tellraw @s [{"color":"gray","text":"- Sounds: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/sounds/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable sounds"}]},"text":"ENABLED"}]
execute if score sounds claims.config matches 0 run tellraw @s [{"color":"gray","text":"- Sounds: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function claims:config/sounds/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable sounds"}]},"text":"DISABLED"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Delete All Claims","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to delete all claims"}]},"clickEvent":{"action":"run_command","value":"/function claims:config/delete_all_claims"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset All Players","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset all connected players"}]},"clickEvent":{"action":"run_command","value":"/function claims:config/reset_all_players"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Messages","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset messages"}]},"clickEvent":{"action":"run_command","value":"/function claims:config/reset/message"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Particles","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset particles"}]},"clickEvent":{"action":"run_command","value":"/function claims:config/reset/particle"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Sounds","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset sounds"}]},"clickEvent":{"action":"run_command","value":"/function claims:config/reset/sound"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Config","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset config"}]},"clickEvent":{"action":"run_command","value":"/function claims:config/reset/config"}}]

tellraw @s ""

tellraw @s [{"text":"===========","color":"gray"},{"text":"======","color":"gray"},{"text":"===========","color":"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2