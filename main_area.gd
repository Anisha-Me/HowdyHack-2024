extends Node2D

var commons_build = false
signal commons_ready

func _ready() -> void:
	pass


func _on_farm_teleporter_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Farm.tscn")


func _on_a_m_teleporter_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://A_M.tscn")
	


func _on_tree_entered() -> void:
	if World.froma_m:
		$Player.global_position = Vector2(500,100)
		World.froma_m = false
	else:
		$Player.global_position = Vector2(100,300)
