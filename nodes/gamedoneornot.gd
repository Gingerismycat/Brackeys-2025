extends Node3D



func _on_collision_shape_3d_tree_entered() -> void:
	work.game = false
	print("work")
	queue_free()
