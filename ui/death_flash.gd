extends ColorRect


func flash():
	$AnimationPlayer.play("flash")

func _ready():
	get_tree().current_scene.death.connect(flash)

