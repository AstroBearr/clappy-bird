extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewport_size: Vector2 = get_viewport().size
	var x_scale: float = viewport_size.x / 1920
	var y_scale: float = viewport_size.y / 1080
	var min_scale: float = max(x_scale, y_scale)
	
	zoom = Vector2(min_scale, min_scale)
