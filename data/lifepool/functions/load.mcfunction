# Create Scoreboards
scoreboard objectives add lives dummy {"text": "Life Pool", "color": "dark_green"}
scoreboard objectives add deaths deathCount

# Display scoreboards
scoreboard objectives setdisplay sidebar lives
scoreboard objectives setdisplay list deaths

# Add lives if not already set
execute unless score Remaining: lives = Remaining: lives run scoreboard players set Remaining: lives 5
execute unless score #dead lives = #dead lives run scoreboard players set #dead lives 0
