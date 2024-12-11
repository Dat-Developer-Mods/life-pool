# Set back to survival
gamemode survival @s

# Play Totem
execute at @s run playsound minecraft:item.totem.use ambient @s ~ ~ ~
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 300 normal

# Decrement Lives
execute unless score #dead lives matches 1.. run scoreboard players remove Remaining: lives 1

# Handle No lives remaining
execute if score Remaining: lives matches 0 run scoreboard players add #dead lives 1

# Display title
title @a times 15t 2s 1s

execute if score #dead lives matches 0 run title @a subtitle {"color": "dark_purple", "text": "You lost a life"}
execute if score #dead lives matches 1 run title @a subtitle {"color": "dark_purple", "text": "No more respawns"}

execute unless score #dead lives matches 2 run title @a title {"color": "dark_red", "text": "-1 Life"}
execute if score #dead lives matches 2 run title @a title {"color": "dark_red", "text": "Game Over"}
