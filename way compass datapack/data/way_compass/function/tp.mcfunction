clear @s chorus_fruit 8
execute store result score @s way_compass_cd run scoreboard players get cooldown value

$execute if block $(xc) $(yc) $(zc) minecraft:lodestone run tp @s $(x) $(y) $(z)