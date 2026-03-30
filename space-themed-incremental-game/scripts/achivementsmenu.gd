extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var achivements_unlocked: Dictionary = {
	1 : {"achivement_name":"welcome", "unlocked" : true},
}
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for achivement in achivements_unlocked.values():
		var achivement_name = achivement["achivement_name"]
		var achivement_path: NodePath = "%s" % achivement_name
		var achivement_icon = get_node(achivement_path)
		if achivement["unlocked"] == true:
			achivement_icon.visible = true
		elif achivement["unlocked"] == false:
			achivement_icon.visible = false
	
func _achivement_unlocked(achivement_name):
	for achivement in achivements_unlocked.values():
		if achivement["achivement_name"] == achivement_name:
			achivement["unlocked"] = true
			
func _on_achivement_mouse_hovered(achivement_name) -> void:
	var hover_text_path:NodePath = "%s/hover text" % achivement_name
	var hover_text: RichTextLabel = get_node(hover_text_path)
	hover_text.visible = true
	
func _on_achivement_mouse_unhovered(achivement_name) -> void:
	var hover_text_path:NodePath = "%s/hover text" % achivement_name
	var hover_text: RichTextLabel = get_node(hover_text_path)
	hover_text.visible = false
