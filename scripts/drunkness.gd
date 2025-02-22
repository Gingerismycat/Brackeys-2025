extends Node

var drunk = 0
var score = 0
var beginIncr = false

func _process(delta):
	if beginIncr == true:
		score+=1*delta*(drunk+1)
