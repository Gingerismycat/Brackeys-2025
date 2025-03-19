extends Area3D




func _on_body_entered(body):
	if body.name ==  "cars":
		get_tree().change_scene_to_file("res://nodes/menu nodes/death_screen.tscn")
