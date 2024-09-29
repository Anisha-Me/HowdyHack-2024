extends Node2D

var planted = false
var harvestable = false
var entered = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_pressed("Pick Up")):
		if (harvestable and entered):
			$AnimatedSprite2D.hide()
			planted = false
			print("PICKED UP")

func initiate_growing(vegetable):
	planted = true
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
		


func _on_animated_sprite_2d_animation_finished() -> void:
	harvestable = true
	print("PICK ME UP....please")
