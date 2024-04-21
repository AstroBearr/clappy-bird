extends RigidBody2D


var can_jump: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_pressed("jump") and can_jump:
		can_jump = false
		$JumpTimer.start()
		linear_velocity = Vector2(0, -500)


func _on_jump_timer_timeout():
	can_jump = true
	
func _integrate_forces(state):
	rotation = 0
