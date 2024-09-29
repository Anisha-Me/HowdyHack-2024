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
		elif(vegetable == "Pepper"):
			$AnimatedSprite2D.play("Pepper_Walk")
		elif(vegetable == "Corn"):
			$AnimatedSprite2D.play("Corn_Walk")
		elif(vegetable == "Carrot"):
			$AnimatedSprite2D.play("Carrot_Walk")
		elif(vegetable == "Potato"):
			$AnimatedSprite2D.play("Potato_Walk")
		else:
			$AnimatedSprite2D.play("Walk")
	else:
		if(vegetable == "Tomato"):
			$AnimatedSprite2D.play("Tomato_Idle")
		elif(vegetable == "Pepper"):
			$AnimatedSprite2D.play("Pepper_Idle")
		elif(vegetable == "Corn"):
			$AnimatedSprite2D.play("Corn_Idle")
		elif(vegetable == "Carrot"):
			$AnimatedSprite2D.play("Carrot_Idle")
		elif(vegetable == "Potato"):
			$AnimatedSprite2D.play("Potato_Idle")
		else:
			$AnimatedSprite2D.play("Idle")

		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	if velocity.x != 0:
		if(vegetable == "Tomato"):
			$AnimatedSprite2D.play("Tomato_Walk")
		elif(vegetable == "Pepper"):
			$AnimatedSprite2D.play("Pepper_Walk")
		elif(vegetable == "Corn"):
			$AnimatedSprite2D.play("Corn_Walk")
		elif(vegetable == "Carrot"):
			$AnimatedSprite2D.play("Carrot_Walk")
		elif(vegetable == "Potato"):
			$AnimatedSprite2D.play("Potato_Walk")
		else:
			$AnimatedSprite2D.play("Walk")
			
		$AnimatedSprite2D.flip_v = false
		# See the note below about the following boolean assignment.
		$AnimatedSprite2D.flip_h = velocity.x < 0
	


func player_shop_method():
	pass
