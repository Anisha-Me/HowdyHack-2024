extends Node2D

func _ready() -> void:
		$Commons.hide()
		$Kyle.hide()
		$Rudder.hide()
		$Plaza.hide()
		$Zachry.hide()
		if(World.commons_build):
			$Commons.show()
		if(World.kyle_build):
			$Kyle.show()
		if(World.plaza_build):
			$Plaza.show()
		if(World.rudder_build):
			$Rudder.show()
		if(World.zachry_build):
			$Zachry.show()
		
func instantiate() -> void:
	if(World.commons_build):
		$Commons.show()
	elif(World.kyle_build):
		$Kyle.show()
	if(World.plaza_build):
		$Plaza.show()
	if(World.rudder_build):
		$Rudder.show()
	if(World.zachry_build):
		$Zachry.show()

func _process(delta: float) -> void:
	if(World.commons_build):
		$Commons.show()
	elif(World.kyle_build):
		print("kyle_built")
		$Kyle.show()
	if(World.plaza_build):
		$Plaza.show()
	if(World.rudder_build):
		$Rudder.show()
	if(World.zachry_build):
		$Zachry.show()


func _on_market_teleporter_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		World.froma_m = true
		get_tree().change_scene_to_file("res://Main Area.tscn")
		print("Teleport from A&M to market")



		
	


func _on_main_area_commons_ready() -> void:
	print("commmmmons")
	$Commons.show()
