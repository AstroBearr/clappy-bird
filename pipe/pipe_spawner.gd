extends Node

const pipe_pair = preload("res://pipe/pipe_pair.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	_on_pipe_spawn_timer_timeout()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pipe_spawn_timer_timeout():
	if get_tree().current_scene.alive == false:
		return
	var new_pipes = pipe_pair.instantiate()
	self.add_child(new_pipes)
	new_pipes.position = $SpawnPosition.position + Vector2(0, randf_range(-300, 300))
