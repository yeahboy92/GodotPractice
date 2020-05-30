extends KinematicBody2D

var motion = Vector2()
var up = Vector2(0, -1)
var gravity = -500


func _physics_process(delta):
	if not is_on_floor():
		motion.y -= gravity * delta
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 200
	elif Input.is_action_pressed("ui_left"):
		motion.x = -200
	else:
		motion.x = 0
		
	if Input.is_action_pressed("ui_down"):
		motion.y = 200
	elif Input.is_action_pressed("ui_up"):
		motion.y = -200
	
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_jump"):
			motion.y = -500
	
	motion = move_and_slide(motion, up)

	
	pass
