extends GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#update the amount 	of a resource owned, selected by name
func _on_resource_amount_updated(resourcename, amount):
	var resourceamountlabeltext = "%s: %s" % [resourcename.capitalize(), amount]
	var resourceamountlabelpath: NodePath = "%s/resourceamount" % resourcename
	var resourceamountlabel = get_node(resourceamountlabelpath)
	resourceamountlabel.text = resourceamountlabeltext
	

#update the amount of a resource gained per second,selected by name
func _on_resource_per_second_updated(resourcename, amount):
	var resourcepersecondlabeltext = "%s per second: %s" % [resourcename.capitalize(), amount]
	var resourcepersecondlabelpath: NodePath = "%s/resourcepersecond" % resourcename
	var resourcepersecondlabel = get_node(resourcepersecondlabelpath)
	resourcepersecondlabel.text = resourcepersecondlabeltext

#update the amount of a resource gained per click,selected by name
func _on_resource_per_click_updated(resourcename, amount):
	var resourceperclicklabeltext = "%s per click: %s" % [resourcename.capitalize(), amount]
	var resourceperclicklabelpath: NodePath = "%s/resourceperclick" % resourcename
	var resourceperclicklabel = get_node(resourceperclicklabelpath)
	resourceperclicklabel.text = resourceperclicklabeltext
	
	
