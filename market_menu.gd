extends StaticBody2D


signal commons


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()
	$Building_Menu.hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

	

func initialize() -> void:
	$sell.show()
	$buy.show()
	$Building_Menu.hide()
	#TODO: HIDE THINGSSSSSSSSSSSSSSSSSSSSSs


func _on_sell_button_pressed() -> void:
	World.money += 20*(World.num_peppers) + 12*(World.num_corn) + World.num_potatos + 7*(World.num_carrots) + 3*(World.num_tomatoes)
	World.num_peppers = 0
	World.num_corn = 0
	World.num_potatos = 0
	World.num_carrots = 0
	World.num_tomatoes = 0
	

func _on_buy_button_pressed() -> void:
	$sell.hide()
	$buy.hide()
	$Building_Menu.show()
	


func _on_building_menu_back() -> void:
	$sell.show()
	$buy.show()
	$Building_Menu.hide()
