extends VehicleBody3D
var time = 0

@onready var car = $car_Body
@onready var mat1 = preload("res://Colors/greenish.tres")
@onready var mat2 = preload("res://Colors/new_standard_material_3d.tres")
@onready var mat3 = preload("res://Colors/orange.tres")
@onready var mat4 = preload("res://Colors/purple.tres")
@onready var mat5 = preload("res://Colors/red.tres")
func _ready():
	var color = randi_range(1,5)
	var color2
	if color == 1:
		car.set_surface_override_material(0,mat1)
	elif color == 2:
		car.set_surface_override_material(0,mat2)
	elif color == 3:
		car.set_surface_override_material(0,mat3)
	elif color == 4:
		car.set_surface_override_material(0,mat4)
	elif color == 5:
		car.set_surface_override_material(0,mat5)
	scale.x =0.7
	scale.y =0.7
	scale.z = 0.7
func _physics_process(_delta):
	var time = work.time
	position.x +=0.3+time
	if position.x > 80:
		queue_free()
	
