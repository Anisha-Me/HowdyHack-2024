extends ColorRect

signal back


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
	if(World.commons_build):
		$Commons_Button.text = "SOLD"
	if(World.kyle_build):
		$Kyle_Button.text = "SOLD"
	if(World.plaza_build):
		$Plaza_Button.text = "SOLD"
	if(World.zachry_build):
		$Zachry_Button.text = "SOLD"
	if(World.rudder_build):
		$Rudder_Button.text = "SOLD"

	
func _on_Commons_Button_pressed() -> void:
	if(World.money >= 100 and World.commons_build == false):
		$Commons_Button.text = "SOLD"
		World.money -= 100
		World.commons_build = true
func _on_Zachry_Button_pressed() -> void:
	if(World.money >= 300 and World.zachry_build == false):
		$Zachry_Button.text = "SOLD"
		World.money -= 300
		World.zachry_build = true
func _on_Kyle_Button_pressed() -> void:
	if(World.money >= 600 and World.kyle_build == false):
		$Kyle_Button.text = "SOLD"
		World.money -= 600
		World.kyle_build = true
func _on_Rudder_Button_pressed() -> void:
	if(World.money >= 1000 and World.rudder_build == false):
		$Rudder_Button.text = "SOLD"
		World.money -= 1000
		World.rudder_build = true
func _on_Plaza_Button_pressed() -> void:
	if(World.money >= 2000 and World.plaza_build == false):
		$Plaza_Button.text = "SOLD"
		World.money -= 2000
		World.plaza_build = true

	


func _on_back_button_pressed() -> void:
	print("Pressed")
	self.hide() 
	back.emit()
	
