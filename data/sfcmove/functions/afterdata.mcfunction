execute as @a[tag=SF_chest_grab] at @s run data modify block ~ ~-.5 ~ Items set value []

execute as @a[tag=SF_chest_hold] at @s run particle dust_color_transition 1 .6 0 1 1 .2 0 ~ ~ ~ 0 0 0 0 1 normal @s



execute as @a if score @s SF_crouch matches 20.. run scoreboard players set @s SF_crouch 0
tag @a remove SF_chest_grab
tag @a remove SF_chest_place
tag @a remove SF_chest