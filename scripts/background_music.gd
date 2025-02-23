extends AudioStreamPlayer3D

@onready var background_music = $"."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	background_music.pitch_scale = 1 - Drunkness.drunk*0.02
