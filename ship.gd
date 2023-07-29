extends Node2D



var VELOCITY = 1.0

var YAW_SPEED = 1.0
var CUR_YAW_GRAD = 0
var DES_YAW_GRAD = 0

#func _physics_process(_delta):
	
#	var DYG_Y = get_local_mouse_position().y
#	var DYG_X = get_local_mouse_position().x

#	if Input.is_action_just_pressed("sel_pos"):
#		if get_local_mouse_position().x != 0 and get_local_mouse_position().y != 0:
#			
#			DES_YAW_GRAD = atan(DYG_Y / DYG_X)*180/PI
#			print(get_local_mouse_position())
#			print(DES_YAW_GRAD)

#	if Input.is_action_just_pressed("sel_pos"):
#		DES_YAW_GRAD = get_local_mouse_position()
#		look_at(DES_YAW_GRAD)

#	if Input.is_action_just_pressed("thrust"):
#		VELOCITY.y += 1
#		print(VELOCITY)
##	move_and_slide()
	

func get_input():
	look_at(get_global_mouse_position())


func _physics_process(delta):
	get_input()
	
	

