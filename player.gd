extends CharacterBody2D

var screen_size 
var speed = 50
var motion = Vector2.ZERO

func _ready():
	screen_size = get_viewport_rect().size


func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("Right"):
		velocity.x += 1
	if Input.is_action_pressed("Left"):
		velocity.x -= 1
	if Input.is_action_pressed("Down"):
		velocity.y += 1
	if Input.is_action_pressed("Up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	if velocity.length() > 0:
		motion = motion.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.animation = "Idle"

		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	if velocity.x != 0 or velocity.y != 0:
		$AnimatedSprite2D.animation = "Walk"
		$AnimatedSprite2D.flip_v = false
		# See the note below about the following boolean assignment.
		$AnimatedSprite2D.flip_h = velocity.x < 0
		
		
	
	
