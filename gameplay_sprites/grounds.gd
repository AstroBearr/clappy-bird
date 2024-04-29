extends Node2D

var time = 0

func _process(delta):
	if get_tree().current_scene.alive == true:
		$Ground/Sprite2D.material.set_shader_parameter("time", time)
		$Ground2/Sprite2D.material.set_shader_parameter("time", time)
		$Ground3/Sprite2D.material.set_shader_parameter("time", time)
		time += delta
	else:
		return
