extends Node
var time =0 
var game = true
var time1 = 0 
func _physics_process(_delta):
	time1 +=0.005
	if time1>=3:
		time+=0.03
		time1 =0
