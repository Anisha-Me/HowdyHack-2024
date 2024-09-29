extends Node2D


func _on_farm_teleporter_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Farm.tscn")
