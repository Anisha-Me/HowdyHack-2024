extends CharacterBody2D

var screen_size 
var speed = 100
var motion = Vector2.ZERO
var vegetable  = "Nothing"

signal PickUp

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
		$AnimatedSprite2D.play("Walk")
	else:
		$AnimatedSprite2D.play("Idle")

		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "Walk"
		$AnimatedSprite2D.flip_v = false
		# See the note below about the following boolean assignment.
		$AnimatedSprite2D.flip_h = velocity.x < 0
	
	
func _body_entered():
	print("helllo")
	PickUp.emit

func player_shop_method():
	pass
		
		
	
	


func _on_pepper_box_pick_up(vegetable: Variant) -> void:
	print("PLEASE I BEG")


func area_entered():
	print("help me")


func _on_pepper_box_area_entered(area: Area2D) -> void:
	print("working again??")

func _on_area_2d_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
