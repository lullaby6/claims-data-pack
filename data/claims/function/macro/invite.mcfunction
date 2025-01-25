$execute as @a[tag=claims.player.$(invited_id)] run tag @s add claims.player.invited.$(id)
$execute as @a[tag=claims.player.$(invited_id)] run tellraw @s [{"color":"gray","text":"You have been invited to player $(id)'s claim."}]
$execute as @a[tag=claims.player.$(invited_id)] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2

$execute as @a[tag=claims.player.$(invited_id)] run tag @s remove claims.player.enter
$execute as @a[tag=claims.player.$(invited_id)] run gamemode survival @s