extends Control

@onready var score = $VBoxContainer/Score
@onready var funny_meter = $VBoxContainer/FunnyMeter

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score.text = "Score: " + str(int(Drunkness.score))
	funny_meter.text = "[rainbow freq=" + str(0.1+Drunkness.drunk/5.0) + "][tornado radius="+ str(Drunkness.drunk) + "freq=" + str(Drunkness.drunk) + "]Funny Meter: " + str(Drunkness.drunk)
