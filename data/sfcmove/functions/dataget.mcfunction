data modify storage minecraft:sf_data_store SF append from storage minecraft:sf_data_store SF[0]
data remove storage minecraft:sf_data_store SF[0]

execute store result score SF_id_pos SF_id run data get storage minecraft:sf_data_store SF[0].id 1
function sfcmove:datamodify
execute unless score SF_id_pos SF_id matches 1 run function sfcmove:dataget