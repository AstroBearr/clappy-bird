extends Node2D

var time = 0

func _process(delta):
	if get_tree().current_scene.alive == true:
		$Grass.material.set_shader_parameter("time", time)
		$Buildings.material.set_shader_parameter("time", time)
		$Clouds.material.set_shader_parameter("time", time)
		time += delta
	else:
		return
