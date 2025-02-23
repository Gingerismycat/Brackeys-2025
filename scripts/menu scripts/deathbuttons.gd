extends Button
@onready var score = $"../Score"

func _ready():
	score.text = "Score: " + str(int(Drunkness.score))



func _on_pressed():
	Drunkness.score = 0
	Drunkness.drunk = 0
	work.time =0
	get_tree().change_scene_to_file("res://nodes/test3d.tscn")


func _on_main_menu_pressed():
	Drunkness.score = 0
	Drunkness.drunk = 0
	work.time =0
	get_tree().change_scene_to_file("res://nodes/menu nodes/main_menu.tscn")
