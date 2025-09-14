tellraw @s {"text":"TP dans 3 secondes", "color":"gold"}
scoreboard players set @s rtp_loading 1
schedule function minecraft:rtp_run 3s append