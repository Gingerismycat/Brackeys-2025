extends Node3D

@onready var driver = $"."
@onready var currentPos = driver.global_position.x
@export var movementSpeed = 25
@export var maxSideDistance = 25
@onready var delay_timer = $DelayTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	print(movementSpeed)
	print(maxSideDistance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(delay_timer.time_left == 0):
		if Input.is_action_pressed("Right") and driver.global_position.x < currentPos +maxSideDistance:
			driver.global_position.x+=movementSpeed*delta
		if Input.is_action_pressed("Left") and driver.global_position.x > currentPos -maxSideDistance:
			driver.global_position.x-=movementSpeed*delta
		if(Drunkness.drunk>0 && randi_range(0,100) > 100-Drunkness.drunk):
			delay_timer.set_wait_time(0.1)
			delay_timer.start()
