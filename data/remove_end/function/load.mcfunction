title @a times 10 70 20

title @a title {"text":"✦ Remove End Crystals ✦","color":"light_purple","bold":true}
title @a subtitle {"text":"and TNT 💣","color":"red","italic":true,"bold":true}
title @a actionbar {"text":"Version 1.21.8 • By: Elpollo097","color":"white"}

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1
execute as @a at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 50 force

gamerule command_block_output false 
scoreboard objectives add aim dummy