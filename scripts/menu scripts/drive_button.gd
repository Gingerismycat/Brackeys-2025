extends Button


func _on_pressed():
	Drunkness.drunk = 0
	Drunkness.score = 0
	Drunkness.beginIncr = true
	get_tree().change_scene_to_file("res://nodes/test3d.tscn")


func _on_credit_button_pressed():
	get_tree().change_scene_to_file("res://nodes/menu nodes/credits.tscn")
