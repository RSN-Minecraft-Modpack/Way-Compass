execute as @a[scores={rtp_loading=1..}] run execute at @s run spreadplayers ~ ~ 0 8 false @s
execute as @a[scores={rtp_loading=1..}] run execute at @s run playsound minecraft:entity.player.teleport player @a ~ ~ ~
scoreboard players set @a rtp_loading 0