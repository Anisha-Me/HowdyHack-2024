extends ColorRect

var commons_sold = false
var zachry_sold = false
var plaza_sold = false
var kyle_sold = false
var rudder_sold = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_Commons_Button_pressed() -> void:
	if(World.money >= 100 and commons_sold == false):
		$Commons_Button.text = "SOLD"
		World.money -= 100
		commons_sold = true
func _on_Zachry_Button_pressed() -> void:
	if(World.money >= 300 and zachry_sold == false):
		$Zachry_Button.text = "SOLD"
		World.money -= 300
		zachry_sold = true
func _on_Kyle_Button_pressed() -> void:
	if(World.money >= 600 and kyle_sold == false):
		$Kyle_Button.text = "SOLD"
		World.money -= 600
		kyle_sold = true
func _on_Rudder_Button_pressed() -> void:
	if(World.money >= 1000 and rudder_sold == false):
		$Rudder_Button.text = "SOLD"
		World.money -= 1000
		rudder_sold = true
func _on_Plaza_Button_pressed() -> void:
	if(World.money >= 2000 and plaza_sold == false):
		$Plaza_Button.text = "SOLD"
		World.money -= 2000
		plaza_sold = true

func _on_Back_Button_pressed() -> void:
	$Building_Menu.hide()
	
