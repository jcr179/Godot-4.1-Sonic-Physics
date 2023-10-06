extends Area2D

enum Switch { LEFT_TO_RIGHT, RIGHT_TO_LEFT, INVERT }
@export var SWITCH_MODE: Switch = Switch.LEFT_TO_RIGHT

var check_mask : int
var uncheck_mask : int

func left_to_right():
	check_mask = 3
	uncheck_mask = 2

func right_to_left():
	check_mask = 2
	uncheck_mask = 3

func invert(is_left_activated, is_right_activated):
	if is_left_activated :
		check_mask = 3
		uncheck_mask = 2
	elif is_right_activated :
		check_mask = 2
		uncheck_mask = 3

func _on_Area2D_body_entered(body):
	if body.name == 'Player':
		var left = body.get_collision_mask_value(2)
		var right = body.get_collision_mask_value(3)
		
		match SWITCH_MODE:
			Switch.LEFT_TO_RIGHT:
				left_to_right()
			Switch.RIGHT_TO_LEFT:
				right_to_left()
			Switch.INVERT:
				invert(left, right)
		
		body.set_collision_mask_value(check_mask, true)
		body.set_collision_mask_value(uncheck_mask, false)
		body.left_ground.set_collision_mask_value(check_mask, true)
		body.left_ground.set_collision_mask_value(uncheck_mask, false)
		body.right_ground.set_collision_mask_value(check_mask, true)
		body.right_ground.set_collision_mask_value(uncheck_mask, false)
