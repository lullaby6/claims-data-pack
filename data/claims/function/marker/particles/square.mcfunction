$execute positioned ^ ^.25 ^$(radius) run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a
$execute positioned ^ ^.25 ^-$(radius) run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a

$execute positioned ^$(radius) ^.25 ^ run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a
$execute positioned ^-$(radius) ^.25 ^ run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a

$execute positioned ^$(radius) ^.25 ^$(radius) run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a
$execute positioned ^-$(radius) ^.25 ^$(radius) run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a
$execute positioned ^$(radius) ^.25 ^-$(radius) run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a
$execute positioned ^-$(radius) ^.25 ^-$(radius) run particle $(radius_particles) ~ ~ ~ 0 0 0 0 1 force @a

tp @s ~ ~ ~ 0 0