extends Node2D

signal PickUpPepper

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_action_pressed("Pick Up")):
		PickUpPepper.emit()
	

func _on_body_entered(body: Node):
	set_process(true)
	
func _on_body_exited(body: Node):
	set_process(false)
