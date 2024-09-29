extends Node2D

func _ready() -> void:
	pass

func _on_farm_teleporter_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Farm.tscn")


func _on_a_m_teleporter_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://A_M.tscn")
	
