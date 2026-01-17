#Detect
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b}] at @s run scoreboard players set @s aim 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b}] at @s run execute if entity @e[type=end_crystal,distance=..1] run scoreboard players set @s aim 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b}] at @s run execute if entity @e[type=tnt,distance=..1] run scoreboard players set @s aim 1
execute as @e[type=tnt] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},distance=..1] run scoreboard players set @s aim 1
execute as @e[type=end_crystal] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},distance=..1] run scoreboard players set @s aim 1

#EFECTS
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}] at @s run playsound minecraft:item.shield.break ambient @p[distance=..10] ~ ~ ~ 1 0.5
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 10 force

#SUMMON DROP
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}] at @s run execute if entity @e[type=end_crystal,distance=..1] run summon item ~ ~1.3 ~ {Item:{id:"minecraft:end_crystal",Count:1b}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}] at @s run execute if entity @e[type=tnt,distance=..1] run summon item ~ ~1 ~ {Item:{id:"minecraft:tnt",Count:1b}}

#Advancement
execute as @e[type=player] at @s run execute if entity @e[type=tnt,distance=..5,scores={aim=1}] run advancement grant @s until remove_end:remove/tnt
execute as @e[type=player] at @s run execute if entity @e[type=end_crystal,distance=..5,scores={aim=1}] run advancement grant @s until remove_end:remove/end_crystal

#KILLS
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}] at @s run kill @e[type=end_crystal,distance=..1]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}] at @s run kill @e[type=tnt,distance=..1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:shears"},OnGround:1b},scores={aim=1}]