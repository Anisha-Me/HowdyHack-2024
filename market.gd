extends StaticBody2D






# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.S
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		$MarketMenu.initialize()
		$MarketMenu.show()

func _on_area_2d_body_exited(body: Node2D) -> void:
	$MarketMenu.hide()
	pass # Replace with function body.
