scoreboard players enable @a rtp
execute as @a[scores={rtp=1..}] run function minecraft:rtp_player_function
scoreboard players set @a rtp 0