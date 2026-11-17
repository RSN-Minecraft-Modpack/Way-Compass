execute if score now rtp_enabled = enabled rtp_enabled run scoreboard players enable @a rtp
execute if score now rtp_enabled = disabled rtp_enabled run scoreboard players reset @a rtp
execute as @a[scores={rtp=1..}] run function minecraft:rtp_player_function
scoreboard players set @a rtp 0

execute as @a[scores={way_compass_cd=1..}] run scoreboard players remove @a way_compass_cd 1
execute as @a run scoreboard players add @a way_compass_cd 0

execute store result score @s minute run scoreboard players get @s way_compass_cd
execute as @a run scoreboard players operation @s minute /= minute value
execute store result score @s seconde run scoreboard players get @s way_compass_cd
execute as @a run scoreboard players operation @s seconde /= tick value
execute as @a run scoreboard players operation @s seconde %= seconde value

execute as @a if items entity @s weapon *[minecraft:lodestone_tracker] run item modify entity @s weapon way_compass:is_binded