extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sell_button_pressed() -> void:
	World.money = 1
	
	
	pass # Replace with function body.

func _on_buy_button_pressed() -> void:
	$sell.hide()
	$buy.hide()
	pass # Replace with function body.
