extends Node2D

var planted = false
var harvestable = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func initiate_growing(vegetable):
	if (vegetable == "Tomato"):
		$AnimatedSprite2D.show()
		$AnimatedSprite2D.play("Tomato_growing")
	else:
		print("NOPE")
		
