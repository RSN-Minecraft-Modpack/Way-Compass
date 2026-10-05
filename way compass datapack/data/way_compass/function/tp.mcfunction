clear @s chorus_fruit 8

execute if items entity @s hotbar.* minecraft:chorus_fruit run say hot
execute if items entity @s inventory.* minecraft:chorus_fruit run say inv

$execute if block $(x) $(y) $(z) minecraft:lodestone run tp @s $(x) $(y) $(z)