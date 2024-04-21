extends Node

const pipe_pair = preload("res://pipe/pipe_pair.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pipe_spawn_timer_timeout():
	var new_pipes = pipe_pair.instantiate()
	self.add_child(new_pipes)
	new_pipes.position = $SpawnPosition.position
