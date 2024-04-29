extends StaticBody2D

func _process(delta):
	if get_tree().current_scene.alive == false:
		set_collision_layer_value(1, false)
		set_collision_layer_value(2, true)
		set_collision_mask_value(1, false)
		set_collision_mask_value(2, true)
