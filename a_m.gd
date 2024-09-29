extends Node2D


func _on_market_teleporter_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		get_tree().change_scene_to_file("res://Main Area.tscn")
		print("Teleport from A&M to market")
