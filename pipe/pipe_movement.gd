extends Node2D

var distance: int;

var effect: int; # 0=None, 1=Chomp
var effect_offset: int = 0;
var effect_flag_0 = 0;


# Called when the node enters the scene tree for the first time.
func _ready():
	distance = 300
	effect = 0;
	
	$TopPipe/Sprite2D.frame = 0
	$BottomPipe/Sprite2D.frame = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if effect == 1:
		effect_chomp()
	
	
	$TopPipe.position = Vector2(0, distance * -0.5 - ($TopPipe/CollisionShape2D.shape.size.y * $TopPipe.scale.y)/2 - effect_offset)
	$BottomPipe.position = Vector2(0, distance * 0.5 + ($TopPipe/CollisionShape2D.shape.size.y * $TopPipe.scale.y)/2 + effect_offset)
	
	
	if get_tree().current_scene.alive == false:
		return
	position.x -= 300 * delta
	
func effect_chomp():
	if effect_flag_0 == 0:
			effect_flag_0 = -10
	if effect_offset <= -distance/2:
		effect_flag_0 = 1
	if effect_offset >= 0:
		effect_flag_0 = -10
	effect_offset += effect_flag_0
