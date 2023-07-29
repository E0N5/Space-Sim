extends CharacterBody2D


var VELOCITY = 0

var YAW_SPEED = 0.02
var CUR_YAW_GRAD = 0.0
var DES_YAW_GRAD = 0.0
var angle = 0

func similar(a: float, b: float) -> bool:
	return a >= b - 0.0001 and a <= b + 0.0001

func _input(event):
	if event.is_action_pressed("sel_pos"):
		var DYG_Y = get_global_mouse_position().y
		var DYG_X = get_global_mouse_position().x

		DES_YAW_GRAD = snapped(atan(DYG_Y / DYG_X) if DYG_X >= 0 else atan(DYG_Y / DYG_X) + PI, 0.0001)
		CUR_YAW_GRAD = rotation
		angle = 0

		print("x: ", DYG_X, ", y: ", DYG_Y)

"""WIP
	if event.is_action_pressed("thrust"):
		VELOCITY = 6.0
		print(VELOCITY)
"""
"""
func _physics_process(delta):
	if !similar(CUR_YAW_GRAD, DES_YAW_GRAD):
		rotation = lerp_angle(CUR_YAW_GRAD, DES_YAW_GRAD, YAW_SPEED)
		print("CUR: ", rotation, " DES: ", DES_YAW_GRAD)

	CUR_YAW_GRAD = snapped(rotation, 0.0001)

	move_and_slide()
"""

func _physics_process(delta):
	if !similar(rotation, DES_YAW_GRAD):
		rotation = lerp_angle(CUR_YAW_GRAD, DES_YAW_GRAD, angle)
		angle += delta
		print("CUR: ", rotation, " DES: ", DES_YAW_GRAD)

	move_and_slide()

