clear @s chorus_fruit 8
scoreboard players set @s way_compass_cd 12000

$execute if block $(xc) $(yc) $(zc) minecraft:lodestone run tp @s $(x) $(y) $(z)