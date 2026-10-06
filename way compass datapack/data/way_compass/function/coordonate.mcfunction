execute store result score @s lodestone_y run data get storage test yc
scoreboard players add @s lodestone_y 1
execute store result storage test y int 1 run scoreboard players get @s lodestone_y
execute store result score @s lodestone_x run data get storage test xc
execute store result storage test x int 1 run scoreboard players get @s lodestone_x
execute store result score @s lodestone_z run data get storage test zc
execute store result storage test z int 1 run scoreboard players get @s lodestone_z

execute as @s run function way_compass:tp with storage test