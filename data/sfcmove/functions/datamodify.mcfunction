execute as @a at @s if score @s SF_id = SF_id_pos SF_id if block ~ ~-.5 ~ minecraft:chest if score @s SF_crouch matches 20.. unless data storage minecraft:sf_data_store SF[0].chestinv[] if data block ~ ~-.5 ~ Items[] run tag @s add SF_chest_grab
execute as @a at @s if score @s SF_id = SF_id_pos SF_id if block ~ ~-.5 ~ minecraft:chest if score @s SF_crouch matches 20.. unless data block ~ ~-.5 ~ Items[] if data storage minecraft:sf_data_store SF[0].chestinv[] run tag @s add SF_chest_place




execute as @a[tag=SF_chest_grab] at @s if score @s SF_id = SF_id_pos SF_id run data modify storage minecraft:sf_data_store SF[0].chestinv set from block ~ ~-.5 ~ Items
execute as @a[tag=SF_chest_place] at @s if score @s SF_id = SF_id_pos SF_id run data modify block ~ ~-.5 ~ Items set from storage minecraft:sf_data_store SF[0].chestinv


execute as @a[tag=SF_chest_place] at @s if score @s SF_id = SF_id_pos SF_id run data modify storage minecraft:sf_data_store SF[0].chestinv set value []



execute as @a at @s if score @s SF_id = SF_id_pos SF_id if data storage minecraft:sf_data_store SF[0].chestinv[] run tag @s add SF_chest_hold
execute as @a at @s if score @s SF_id = SF_id_pos SF_id unless data storage minecraft:sf_data_store SF[0].chestinv[] run tag @s remove SF_chest_hold

#execute as @a at @s if score @s SF_id = SF_id_pos SF_id run title @s actionbar {"nbt":"SF[0]","storage":"minecraft:sf_data_store"}