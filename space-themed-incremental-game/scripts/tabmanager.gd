extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_tab_selected(tab: int) -> void:
	var main = $Main
	var achivements = $Achivements
	var options = $Options
	if tab == 0:
		main.visible = true
		achivements.visible = false
		options.visible = false
	elif tab == 1:
		main.visible = false
		achivements.visible = true
		options.visible = false
	elif tab == 2:
		main.visible = false
		achivements.visible = false
		options.visible = true
