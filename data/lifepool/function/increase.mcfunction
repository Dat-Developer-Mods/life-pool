# Play Effect
execute at @a run playsound ui.toast.challenge_complete ambient @s
execute at @a run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 300 normal

# Display title
title @a times 15t 2s 1s
title @a subtitle {"color": "dark_purple", "text": "You gained more lives"}
title @a title [{"color": "dark_green", "text": "+"}, {"score":{"name":"@s","objective":"livesTrigger"}}, {"color": "dark_green", "text": " lives"}]

# Add Lives
scoreboard players set #dead lives 0
scoreboard players operation Remaining: lives += @s livesTrigger

# Reset Score
scoreboard players set @s livesTrigger 0
