extends WorldEnvironment

@onready var world_environment = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	world_environment.camera_attributes.dof_blur_amount = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Drunkness.drunk <15:
		world_environment.camera_attributes.dof_blur_far_distance = 40-Drunkness.drunk
		world_environment.camera_attributes.dof_blur_amount = Drunkness.drunk/200.0
