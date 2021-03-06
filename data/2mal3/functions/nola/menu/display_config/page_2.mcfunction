# Description: Displays the datapack config
# AS: player, AT: player
# Called from message: 2mal3:nola/menu/display
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t


# Plays click sound
playsound minecraft:ui.button.click master @s


# Get variables
function 2mal3:nola/get_variables


# Display config menu
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s [{"text":"No Lag Datapack Config","bold":true,"color":"gold"}]
tellraw @s [{"text":"<","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_config/page_1"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" -------- ","color":"yellow","hoverEvent":{"action":"show_text","contents":""}},{"text":"2 / 2","color":"gold","hoverEvent":{"action":"show_text","contents":""}},{"text":" -------- >","color":"yellow","hoverEvent":{"action":"show_text","contents":""}}]

tellraw @s {"text":""}

# Displays Config for maximum entities on a block
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum entiys on one block: ","color":"gold","hoverEvent":{"action":"show_text","contents":"How many entities can stand on a block before one gets damaged?"}},{"score":{"name":"$max_entity_cramming","objective":"nola.data"},"color":"red"}]

tellraw @s {"text":""}

# Displays area ignorer
execute if score $area_ignorer nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/area_ignorer/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Area ignorer","color":"gold","hoverEvent":{"action":"show_text","contents":"Armor stands renamed to ignore block the freezing of all entities near them."}}]
execute if score $area_ignorer nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/area_ignorer/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Area ignorer","color":"gold","hoverEvent":{"action":"show_text","contents":"Armor stands renamed to ignore block the freezing of all entities near them."}}]

tellraw @s {"text":""}

# Displays entity limiter
execute if score $entity_limiter nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/entity_limiter/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Entity limiter","color":"gold","hoverEvent":{"action":"show_text","contents":"If there are too many entities of the same kind together, all new entities of the kind will be deleted."}}]
execute if score $entity_limiter nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/entity_limiter/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Entity limiter","color":"gold","hoverEvent":{"action":"show_text","contents":"If there are too many entities of the same kind together, all new entities of the kind will be deleted."}}]

tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $entity_limiter.max_passive nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum passive entities together: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of passive entities that can stand next to each other."}},{"score":{"name":"$entity_limiter.max_passive","objective":"nola.config"},"color":"red"}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $entity_limiter.max_neutral nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum neutral entities together: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of neutral entities that can stand next to each other."}},{"score":{"name":"$entity_limiter.max_neutral","objective":"nola.config"},"color":"red"}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $entity_limiter.max_hostile nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum hostile entities together: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of hostile entities that can stand next to each other."}},{"score":{"name":"$entity_limiter.max_hostile","objective":"nola.config"},"color":"red"}]

tellraw @s {"text":""}

# Displays tps test
execute if score $tps_test nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/tps_test/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" TPS test","color":"gold","hoverEvent":{"action":"show_text","contents":"Automatically tests the server tps (tick per second). Works only if the worldboarder is not affected by other datapack."}}]
execute if score $tps_test nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/tps_test/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" TPS test","color":"gold","hoverEvent":{"action":"show_text","contents":"Automatically tests the server tps (tick per second). Works only if the worldboarder is not affected by other datapack."}}]


tellraw @s {"text":"\n\n\n"}

# Shows key to main menu
tellraw @s {"text":"<<<< Back","color":"red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_menu"},"hoverEvent":{"action":"show_text","contents":"*click*"}}

tellraw @s {"text":""}

# \u274c : false
# \u2714 : true
