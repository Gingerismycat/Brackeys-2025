extends Node2D

@onready var turnable = $"."
@export var rotationSpeed = 0.03
@export var wheelRadMax = 1.3
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Right"):
		if turnable.rotation < wheelRadMax:
			turnable.rotate(rotationSpeed)
	elif Input.is_action_pressed("Left"):
		if turnable.rotation > -1 * wheelRadMax:
			turnable.rotate(-1*rotationSpeed)
	else:
		while turnable.rotation < 0:
			turnable.rotation+=rotationSpeed*delta
		while turnable.rotation > 0:
			turnable.rotation-=rotationSpeed*delta
