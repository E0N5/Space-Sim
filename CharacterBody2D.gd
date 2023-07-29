extends CharacterBody2D


var speed = 0

var yaw_speed = 0.02
var cur_yaw_grad = 0.0
var des_yaw_grad = 0.0
var angle = 0

func similar(a: float, b: float) -> bool:
	return a >= b - 0.001 and a <= b + 0.001

func _input(event):
	if event.is_action_pressed("sel_pos"):
		des_yaw_grad = get_global_mouse_position().angle()
		print("x: ",get_global_mouse_position().x, ", y: ", get_global_mouse_position().y)
"""wip
	if event.is_action_pressed("thrust"):
		velocity = 6.0
		print(velocity)
"""

func _physics_process(_delta):
	if !similar(rotation, des_yaw_grad):
		rotation = lerp_angle(cur_yaw_grad, des_yaw_grad, 0.02)
		cur_yaw_grad = rotation
		
		print("cur: ", cur_yaw_grad, " des: ", des_yaw_grad)

	move_and_slide()

