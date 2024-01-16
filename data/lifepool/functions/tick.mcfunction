# Respawn players
execute unless score #dead lives matches 2 run execute as @a[gamemode=spectator] run function lifepool:respawn

# Spectator mode on no lives
execute if score #dead lives matches 2 run gamemode spectator @a[gamemode=survival]
