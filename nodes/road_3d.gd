extends Node3D
@onready var spawner_timer = $Timer
var car_Scene = preload("res://nodes/car.tscn")
var check = 69
var check2 = 27
func _ready() -> void:
	work.start = true
func _process(delta):
	if(spawner_timer.time_left == 0):
		var carp = randi_range(-2,2)*4
		while carp == check or carp == check2:
			carp = randi_range(-2,2)*4
		var car = car_Scene.instantiate()
		if carp == -8:
			carp+=randf_range(0,1)
		elif carp == -4:
			carp+=randf_range(-1.75,1.75)
		elif carp == 0:
			carp+=randf_range(-1.76,1.75)
		elif carp == 4:
			carp+=randf_range(-1,3)
		elif carp == 8:
			carp+=randf_range(0,2)
		car.position = Vector3i(-20,0.3,carp)
		add_child(car)
		check = carp
		check2 = carp
		spawner_timer.start()
	
	if work.time==0:
		spawner_timer.wait_time = 0.3
	


func _on_timer_2_timeout() -> void:
	spawner_timer.wait_time -= 0.01
