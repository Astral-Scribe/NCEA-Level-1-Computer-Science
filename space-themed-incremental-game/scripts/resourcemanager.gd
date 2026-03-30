extends Control

signal resource_amount_updated (resourcename, amount)
signal resource_per_second_updated (resourcename, amount)
signal resource_per_click_updated (resourcename, amount)

var resources = {
	"resource1" : {"name":"resource1", "id":1, "amount_owned":0, "amount_per_click":1, "amount_per_second":0, "resource_multiplier":1},
	"resource2" : {"name":"resource2", "id":2, "amount_owned":0, "amount_per_click":0, "amount_per_second":0, "resource_multiplier":1}
}
var upgrades = {
	"resource1" : {"id":1, "click_bonus":{"level":1, "base_cost":10}, "click_mult":{"level":1, "base_cost":100}, "idle_gain_bonus":{"level":1, "base_cost":25}, "idle_gain_mult":{"level":1, "base_cost":250}, "resource_mult":{"level":1, "base_cost":1000}},
	"resource2" : {"id":2, "click_bonus":{"level":0, "base_cost":10}, "click_mult":{"level":1, "base_cost":100}, "idle_gain_bonus":{"level":1, "base_cost":25}, "idle_gain_mult":{"level":1, "base_cost":250}, "resource_mult":{"level":1, "base_cost":1000}}
}
var unlocks = {
	"planet2" : {"id":1, "cost":{"resource1":500, "resource2":0}, "unlocked":false}
}
func _on_planet_interacted(gainable_resource_id:int) -> void:
	for resource in resources.values():
		if resource["id"] == gainable_resource_id:
			resource["amount_owned"] += resource["amount_per_click"] * resource["resource_multiplier"]
			resource_amount_updated.emit(resource["name"],resource["amount_owned"])
			

func _on_upgrade_bought(purchase_id:int, type:String, effect:String):
	if type == "unlock":
		for unlock in unlocks.values():
			if unlock["id"] == purchase_id:
				var cost = unlock["cost"]
				if cost["resource1"] <= resources["resource1"]["amount_owned"] && cost["resource2"] <= resources["resource2"]["amount_owned"]:
					set("unlocked", true)
					resources["resource1"]["amount_owned"] -= cost["resource1"]
					resources["resource2"]["amount_owned"] -= cost["resource2"]
					if unlock["id"] == 1:
						resources["resource2"]["amount_per_click"] = 1
						upgrades["resource2"]["click_bonus"] = 1
						resource_per_click_updated.emit("resource2", resources["resource2"]["amount_per_click"])
					for resource in resources.values():
						resource_amount_updated.emit(resource["name"],resource["amount_owned"])
	elif type == "upgrade":
		for upgrade in upgrades.values():
			if upgrade["id"] == purchase_id:
				var upgrade_details = upgrade[effect]
				var cost = floor(upgrade_details["base_cost"] * pow(1.5, (upgrade_details["level"]-1)))
				for resource in resources.values():
					if resource["id"] == purchase_id:
						if cost <= resource["amount_owned"]:
							resource["amount_owned"] -= cost
							upgrade_details["level"] += 1
						resource["amount_per_click"] = upgrade["click_bonus"]["level"] * upgrade["click_mult"]["level"]
						resource["amount_per_second"] = (upgrade["idle_gain_bonus"]["level"]-1) * upgrade["idle_gain_mult"]["level"]
						resource["resource_multiplier"] = upgrade["resource_mult"]["level"]
						resource_amount_updated.emit(resource["name"],resource["amount_owned"])
						resource_per_second_updated.emit(resource["name"], resource["amount_per_second"])
						resource_per_click_updated.emit(resource["name"], resource["amount_per_click"])

func _on_second():
	for resource in resources.values():
		resource["amount_owned"] += resource["amount_per_second"] * resource["resource_multiplier"]
		resource_amount_updated.emit(resource["name"],resource["amount_owned"])


func _on_file_loaded() -> void:
	for resource in resources.values():
		resource_amount_updated.emit(resource["name"],resource["amount_owned"])
		resource_per_second_updated.emit(resource["name"], resource["amount_per_second"])
		resource_per_click_updated.emit(resource["name"], resource["amount_per_click"])
