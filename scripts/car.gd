extends VehicleBody3D

func _physics_process(_delta):
	position.x +=1
	if position.x > 65:
		queue_free()
