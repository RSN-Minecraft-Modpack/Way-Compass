tellraw @a [{"text":"Way compass used"}]
data modify storage test x set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
data modify storage test y set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
data modify storage test z set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

function way_compass:tp with storage test

advancement revoke @s only way_compass:use_compass