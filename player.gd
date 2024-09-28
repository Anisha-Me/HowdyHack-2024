extends CharacterBody2D

var speed = 50
var motion = Vector2.ZERO

func _physics_process(delta: float):
	if Input.is_action_pressed("Down"):
		motion.y = -speed
	elif Input.is_action_pressed("Up"):
		motion.y = speed
	elif Input.is_action_pressed("Right"):
		motion.x = speed
	elif Input.is_action_pressed("Left"):
		motion.x = -speed
		
	
	
