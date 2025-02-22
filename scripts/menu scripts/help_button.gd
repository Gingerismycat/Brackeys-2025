extends Button


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_pressed():
	get_tree().change_scene_to_file("res://nodes/menu nodes/help_menu.tscn")
