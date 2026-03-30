extends GridContainer
#path to a save, with number differentiation to allow for multiple saves
var save_path = "user://save%s.save"
#path to main script so values can be found
@onready var resources = $"../../Main"
@onready var achievements = $"../../Achivements/Achivements List"

signal file_loaded

func save_data(saveslot):
	var data = {
		"resources" = resources.resources,
		"unlocks" = resources.unlocks,
		"upgrades" = resources.upgrades,
		"achievements" = achievements.achivements_unlocked
	}
	var file = FileAccess.open(save_path % saveslot, FileAccess.WRITE)
	file.store_var(data)
	file.close

func load_data(saveslot: int):
	if FileAccess.file_exists(save_path % saveslot):
		var file = FileAccess.open(save_path % saveslot, FileAccess.READ)
		var data = file.get_var()
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			resources.resources = data["resources"]
			resources.unlocks = data ["unlocks"]
			resources.upgrades = data["upgrades"]
			achievements.achivements_unlocked = data["achievements"]
			file_loaded.emit()
		else:
			return "save invalid"
	else:
		return "no save present"
	
