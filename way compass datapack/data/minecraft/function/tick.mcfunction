execute if score now rtp_enabled = enabled rtp_enabled run scoreboard players enable @a rtp
execute if score now rtp_enabled = disabled rtp_enabled run scoreboard players reset @a rtp
execute as @a[scores={rtp=1..}] run function minecraft:rtp_player_function
scoreboard players set @a rtp 0