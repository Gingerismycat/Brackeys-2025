extends Node3D

@onready var turnable = $"."
@export var rotationSpeed = 0.03
@export var wheelRadMax = 1.3
@export var returnSpeed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Right"):
		if turnable.rotation.z > -1* wheelRadMax:
			turnable.rotate_z(-1*rotationSpeed)
	elif Input.is_action_pressed("Left"):
		if turnable.rotation.z < wheelRadMax:
			turnable.rotate_z(rotationSpeed)
	else:
		if turnable.rotation.z < 0:
			turnable.rotation.z+=returnSpeed*delta
		if turnable.rotation.z > 0:
			turnable.rotation.z-=returnSpeed*delta
