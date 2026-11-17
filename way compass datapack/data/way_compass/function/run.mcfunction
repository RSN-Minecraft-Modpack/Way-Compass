data modify storage test xc set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
data modify storage test yc set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
data modify storage test zc set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

execute as @s store result score @s chorus_cost if items entity @s container.* chorus_fruit
execute unless score @s chorus_cost matches 8.. run tellraw @s [{"text":"Way compass teleportation cost 8 chorus fruit","color":"gold"}]
execute if score @s chorus_cost matches 1.. run title @s actionbar [{"text":"En cooldown (","color":"red"},{"score":{"name":"@s","objective":"minute"},"color":"red"},{"text":"min","color":"red"},{"score":{"name":"@s","objective":"seconde"},"color":"red"},{"text":"s)","color":"red"}]
execute as @s if predicate way_compass:can_tp run function way_compass:coordonate

execute as @s run schedule function way_compass:remove 2s replace