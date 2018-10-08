function rfic:mine_machine/break
function rfic:farm_machine/farm
function rfic:battery/main
function rfic:crop_get_machine/main
function rfic:pulverizer/shatter
function rfic:ingot_furnace/furnace
function rfic:compressor/compressor

function rfic:power/power

execute as @e[type=armor_stand,tag=generator] run function rfic:generator/redstone/redstone
execute as @e[type=armor_stand,tag=generator] run function rfic:generator/geo_energy
execute as @e[type=armor_stand,tag=generator] run function rfic:generator/light