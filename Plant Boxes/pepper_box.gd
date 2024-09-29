extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	

func body_entered(body):
	print("helloooooo")
	set_process(true)
	
	
func body_exited(body: Node):
	set_process(false)

	pass # Replace with function body.


func _on_player_area_entered(area: Area2D) -> void:
	print("work this time?")
