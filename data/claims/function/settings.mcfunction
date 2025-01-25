function claims:utils/clear_chat

tellraw @s [{"text":"Claims ","color":"green"},{"text":"Settings:","color":"gray"}]

tellraw @s [{"color":"gray","text":"- Radius: "},{"color":"green","score":{"name":"radius","objective":"claims.settings"}}]

execute if score beacon_particles claims.settings matches 1 run tellraw @s [{"text":"- Beacon Particles: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/beacon_particles/no"}}]
execute if score beacon_particles claims.settings matches 0 run tellraw @s [{"text":"- Beacon Particles: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/beacon_particles/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

tellraw @s [{"color":"gray","text":"- Particles Radius: "},{"color":"green","score":{"name":"particles_radius","objective":"claims.settings"}}]

execute if score radius_particles claims.settings matches 1 run tellraw @s [{"text":"- Radius Particles: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/radius_particles/no"}}]
execute if score radius_particles claims.settings matches 0 run tellraw @s [{"text":"- Radius Particles: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/radius_particles/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

tellraw @s [{"color":"gray","text":"- Radius Particles Speed: "},{"color":"green","score":{"name":"radius_particles_speed","objective":"claims.settings"}}]

execute if score kill_tnt claims.settings matches 1 run tellraw @s [{"text":"- Kill TNT Inside Claims: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/kill_tnt/no"}}]
execute if score kill_tnt claims.settings matches 0 run tellraw @s [{"text":"- Kill TNT Inside Claims: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/kill_tnt/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score sounds claims.settings matches 1 run tellraw @s [{"text":"- Sounds: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/sounds/no"}}]
execute if score sounds claims.settings matches 0 run tellraw @s [{"text":"- Sounds: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/sounds/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score list claims.settings matches 1 run tellraw @s [{"text":"- Show Player ID in List: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/list/no"}}]
execute if score list claims.settings matches 0 run tellraw @s [{"text":"- Show Player ID in List: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function claims:settings/list/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":"/function claims:settings/reset"}}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2