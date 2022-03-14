
# Little teleport particles for the trader when they appear/disappear
execute as @e[type=minecraft:wandering_trader,tag=!dingdong.appeared,tag=!global.ignore,tag=!tcc.trader_entity] at @s run function dingdong:tp_aesthetic
execute at @e[type=minecraft:wandering_trader,tag=!global.ignore,tag=!tcc.trader_entity,nbt={DespawnDelay:1}] run function dingdong:tp_aesthetic

# Adds the Ominous Banner trade
execute as @e[type=minecraft:wandering_trader,tag=tcc.modified_vanilla_entity,tag=!dingdong.modified,tag=!global.ignore,tag=!tcc.trader_entity] run function dingdong:modify_trades

# Ensures scheduled functions are run when a player joins back
execute as @a[scores={dingdong.leave=1..}] run function dingdong:tardy_schedule