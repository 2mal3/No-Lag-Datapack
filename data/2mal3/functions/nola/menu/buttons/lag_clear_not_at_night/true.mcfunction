# Description: Enables lag clear not at night
# Called from function: 2mal3:nola/menu/display_config
# Datapack by 2mal3

# Saves the setting
scoreboard players set $nola.lag_clear_not_at_night nola.config 1

# Displays the updated config menu
function 2mal3:nola/menu/display_config
