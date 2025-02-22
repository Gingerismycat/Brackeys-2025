extends Node3D
@onready var spawner_timer = $Timer
var car_Scene = preload("res://nodes/car.tscn")

func _process(delta):
	if(spawner_timer.time_left == 0):
		var car = car_Scene.instantiate()
		car.position = Vector3(0,0.3,0)
		add_child(car)
		print("work")
		spawner_timer.start()
	

	
