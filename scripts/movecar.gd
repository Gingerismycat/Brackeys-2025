extends Node2D

@onready var driver = $"."
@onready var currentPos = driver.global_position.x
@export var movementSpeed = 25
@export var maxSideDistance = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	print(movementSpeed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Right") and driver.global_position.x < currentPos +maxSideDistance:
		driver.global_position.x+=movementSpeed*delta
	if Input.is_action_pressed("Left") and driver.global_position.x > currentPos -maxSideDistance:
		driver.global_position.x-=movementSpeed*delta
