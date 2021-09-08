execute as @a at @s unless score @s SF_id matches 0.. run scoreboard players set @s SF_id 0
execute as @a[sort=nearest,limit=1,scores={SF_id=0}] at @s run tag @s add SF_id_add
execute as @a[tag=SF_id_add] at @s run scoreboard players set @s SF_id 1
execute as @a[tag=SF_id_add] at @s run scoreboard players operation SF_id_set SF_id += @s SF_id
execute as @a[tag=SF_id_add] at @s run scoreboard players operation @s SF_id = SF_id_set SF_id
execute as @a[tag=SF_id_add] at @s store result storage sf_data_store SF_add.id int 1 run scoreboard players get @s SF_id
execute as @a[tag=SF_id_add] at @s run data modify storage minecraft:sf_data_store SF append from storage minecraft:sf_data_store SF_add

function sfcmove:beforedata

execute if entity @a[tag=SF_chest] run function sfcmove:dataget

function sfcmove:afterdata

tag @a remove SF_id_add

