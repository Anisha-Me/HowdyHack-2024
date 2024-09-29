extends Node2D

var planted = false
var harvestable = false
var entered = false
var tempVeg = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_pressed("Pick Up")):
		if (harvestable and entered):
			$AnimatedSprite2D.hide()
			update_world(tempVeg)
			planted = false
			tempVeg = ""
			print("PICKED UP")

func initiate_growing(vegetable):
	planted = true
	tempVeg = vegetable
	if (vegetable == "Tomato"):
		$AnimatedSprite2D.show()
		$AnimatedSprite2D.play("Tomato_growing")
	elif (vegetable == "Pepper"):
		$AnimatedSprite2D.show()
		$AnimatedSprite2D.play("Pepper_growing")
	elif (vegetable == "Carrot"):
		$AnimatedSprite2D.show()
		$AnimatedSprite2D.play("Carrot_growing")
	elif (vegetable == "Potato"):
		$AnimatedSprite2D.show()
		$AnimatedSprite2D.play("Potato_growing")	
	elif (vegetable == "Corn"):
		$AnimatedSprite2D.show()
		$AnimatedSprite2D.play("Corn_growing")
	else:
		print("NOPE")
		
func update_world(tempVeg):
	if (tempVeg == "Tomato"):
		World.num_tomatoes += 1
	elif (tempVeg == "Pepper"):
		World.num_peppers += 1
	elif (tempVeg == "Carrot"):
		World.num_carrots += 1
	elif (tempVeg == "Potato"):
		World.num_potatos += 1
	elif (tempVeg == "Corn"):
		World.num_corn += 1
		print(World.num_corn)	
	else:
		print("nada")

func _on_animated_sprite_2d_animation_finished() -> void:
	harvestable = true
	print("PICK ME UP....please")
