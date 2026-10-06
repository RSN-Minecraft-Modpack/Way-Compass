tellraw @a [{"text":"Way compass used"}]

data modify storage test x set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
data modify storage test y set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
data modify storage test z set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

execute as @s store result score @s chorus_cost if items entity @s container.* chorus_fruit
execute unless score @s chorus_cost matches 8.. run tellraw @s [{"text":"Way compass teleportation cost 8 chorus fruit","color":"gold"}]
execute if score @s chorus_cost matches 8.. run function way_compass:tp with storage test

execute as @s run schedule function way_compass:remove 3s replace