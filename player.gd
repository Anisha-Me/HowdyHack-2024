extends CharacterBody2D

var screen_size 
var speed = 100
var motion = Vector2.ZERO
var vegetable  = "Nothing"


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
		if(vegetable == "Tomato"):
			$AnimatedSprite2D.play("Tomato_Walk")
		else:
			$AnimatedSprite2D.play("Walk")
	else:
		if(vegetable=="Tomato"):
			$AnimatedSprite2D.play("Tomato_Idle")
		else:
			$AnimatedSprite2D.play("Idle")

		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	if velocity.x != 0:
		if(vegetable == "Tomato"):
			$AnimatedSprite2D.animation = "Tomato_Walk"
		else:
			$AnimatedSprite2D.animation = "Walk"
		$AnimatedSprite2D.flip_v = false
		# See the note below about the following boolean assignment.
		$AnimatedSprite2D.flip_h = velocity.x < 0
	


func player_shop_method():
	pass
