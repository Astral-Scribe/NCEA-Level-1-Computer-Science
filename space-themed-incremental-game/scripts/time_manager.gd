extends Timer
signal tick
signal second

var ticks_this_second = 0
#ticks 20 times a second, and emits signals about it
func _on_tick() -> void:
	if ticks_this_second == 20:
		second.emit()
		ticks_this_second = 0
	else:
		ticks_this_second += 1
		tick.emit()
