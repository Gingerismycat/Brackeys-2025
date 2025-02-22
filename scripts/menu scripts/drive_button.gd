extends Button


func _on_pressed():
	Drunkness.drunk = 0
	get_tree().change_scene_to_file("res://nodes/test3d.tscn")
