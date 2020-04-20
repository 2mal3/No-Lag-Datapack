# Description: Deleting the Datapack
# From: main/uninstall/unistall_ask
# Datapack by 2mal3

# send uninstall message
tellraw @a ["",{"text":"[Server] The No Lag Datapack v."},{"score":{"name":"V1","objective":"nld.data"}},{"text":"."},{"score":{"name":"V2","objective":"nld.data"}},{"text":"."},{"score":{"name":"V3","objective":"nld.data"}},{"text":" by 2mal3 was successfully uninstalled."}]

# remove scoreboards
scoreboard objectives remove nld.data
scoreboard objectives remove nld.xp

# remove teams
team remove nld.no_collision

# remove gamerules
gamerule maxEntityCramming 24

# other
execute as @e[tag=nld.NoAI] run data merge entity @s {NoAI:0b}
schedule clear nld:clear_team
schedule clear nld:main/tick/2