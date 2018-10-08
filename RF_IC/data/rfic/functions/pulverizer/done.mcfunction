scoreboard players set #random_min rand 1
execute as @s[scores={ShaType=1..4}] run scoreboard players set #random_max rand 10
execute as @s[scores={ShaType=5}] run scoreboard players set #random_max rand 25
execute as @s[scores={ShaType=6}] run scoreboard players set #random_max rand 5
execute as @s[scores={ShaType=10}] run scoreboard players set #random_max rand 10
execute as @s[scores={ShaType=11..12}] run scoreboard players set #random_max rand 16
execute as @s[scores={ShaType=7..8}] run scoreboard players set #random_max rand 5
function rfic:random
execute as @s[scores={ShaType=7..8}] run scoreboard players add @s rand 1

execute as @s[scores={ShaType=1}] run replaceitem block ~ ~ ~ container.6 minecraft:coal 2
execute as @s[scores={ShaType=1,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:glowstone_dust{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.sulphur\"}"},id:"rf:sulphur"} 2
execute as @s[scores={ShaType=1}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3

execute as @s[scores={ShaType=2}] run replaceitem block ~ ~ ~ container.6 minecraft:diamond 3
execute as @s[scores={ShaType=2,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.iron_dust\"}"},id:"rf:iron_dust"} 2
execute as @s[scores={ShaType=2}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3

execute as @s[scores={ShaType=3}] run replaceitem block ~ ~ ~ container.6 minecraft:emerald 2
execute as @s[scores={ShaType=3,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.iron_dust\"}"},id:"rf:iron_dust"} 2
execute as @s[scores={ShaType=3}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3

execute as @s[scores={ShaType=4}] run replaceitem block ~ ~ ~ container.6 minecraft:quartz 3
execute as @s[scores={ShaType=4,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.lead_dust\"}"},id:"rf:lead_dust"} 2
execute as @s[scores={ShaType=4}] run replaceitem block ~ ~ ~ container.7 minecraft:netherrack 3

execute as @s[scores={ShaType=5}] run replaceitem block ~ ~ ~ container.6 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.iron_dust\"}"},id:"rf:iron_dust"} 2
execute as @s[scores={ShaType=5,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.nickel_dust\"}"},id:"rf:nickel_dust"} 2
execute as @s[scores={ShaType=5}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3

execute as @s[scores={ShaType=6}] run replaceitem block ~ ~ ~ container.6 minecraft:glowstone_dust{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.gold_dust\"}"},id:"rf:gold_dust"} 2
execute as @s[scores={ShaType=6,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.quartz_dust\"}"},id:"rf:quartz_dust"} 8
execute as @s[scores={ShaType=6}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3

execute as @s[scores={ShaType=7}] run replaceitem block ~ ~ ~ container.6 minecraft:lapis_lazuli
execute as @s[scores={ShaType=7}] run replaceitem block ~ ~ ~ container.8 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.tin_dust\"}"},id:"rf:tin_dust"} 3
execute as @s[scores={ShaType=7}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3

execute as @s[scores={ShaType=8}] run replaceitem block ~ ~ ~ container.6 minecraft:redstone
execute as @s[scores={ShaType=8}] run replaceitem block ~ ~ ~ container.7 minecraft:gravel 3
execute as @s[scores={ShaType=7..8}] store result block ~ ~ ~ Items[6].Count byte 1 run scoreboard players get @s rand

execute as @s[scores={ShaType=9}] run replaceitem block ~ ~ ~ container.6 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.carbon_dust\"}"},id:"rf:carbon_dust"} 1
execute as @s[scores={ShaType=9}] run replaceitem block ~ ~ ~ container.7 minecraft:glowstone_dust{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.sulphur\"}"},id:"rf:sulphur"} 1

execute as @s[scores={ShaType=10}] run replaceitem block ~ ~ ~ container.6 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.quartz_dust\"}"},id:"rf:quartz_dust"} 4
execute as @s[scores={ShaType=10,rand=1}] run replaceitem block ~ ~ ~ container.7 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.lead_dust\"}"},id:"rf:lead_dust"} 1

execute as @s[scores={ShaType=11}] run replaceitem block ~ ~ ~ container.6 minecraft:flint 2
execute as @s[scores={ShaType=11}] run replaceitem block ~ ~ ~ container.7 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.niter\"}"},id:"rf:niter"} 1
execute as @s[scores={ShaType=11,rand=1..2}] run replaceitem block ~ ~ ~ container.8 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.zinc_dust\"}"},id:"rf:zinc_dust"} 2
execute as @s[scores={ShaType=11,rand=3..6}] run replaceitem block ~ ~ ~ container.8 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.tin_dust\"}"},id:"rf:tin_dust"} 4
execute as @s[scores={ShaType=11,rand=8}] run replaceitem block ~ ~ ~ container.8 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.lead_dust\"}"},id:"rf:lead_dust"} 2
execute as @s[scores={ShaType=11,rand=12}] run replaceitem block ~ ~ ~ container.8 minecraft:gunpowder{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.tungsten_dust\"}"},id:"rf:tungsten_dust"} 1

execute as @s[scores={ShaType=12}] run replaceitem block ~ ~ ~ container.6 minecraft:sugar{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.quartz_dust\"}"},id:"rf:quartz_dust"} 1
execute as @s[scores={ShaType=12,rand=1}] run replaceitem block ~ ~ ~ container.8 minecraft:gray_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.silicon\"}"},id:"rf:silicon"} 1

#[1]
execute store result score @s PulCount run data get block ~ ~ ~ Items[1].Count
execute store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players remove @s PulCount 1

scoreboard players reset @s PulCount
scoreboard players reset @s ShaType
tag @s remove shattering