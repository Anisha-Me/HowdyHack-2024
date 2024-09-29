extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()
	$leftbutton.hide()
	$rightbutton.hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sell_button_pressed() -> void:
	World.money += World.num_peppers + World.num_corn + World.num_potatos + World.num_carrots + World.num_tomatoes
	World.num_peppers = 0
	World.num_corn = 0
	World.num_potatos = 0
	World.num_carrots = 0
	World.num_tomatoes = 0
	

func _on_buy_button_pressed() -> void:
	$sell.hide()
	$buy.hide()
	
