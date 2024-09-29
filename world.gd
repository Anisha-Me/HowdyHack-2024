extends Node2D
var money = 1000
var num_peppers = 0
var num_corn = 0
var num_potatos = 0
var num_carrots = 0
var num_tomatoes = 0

var cost = 2
var rudder = false
var kyle = false
var plaza = false
var zachary = false
var commons = false

var commons_build = false
var kyle_build = false
var rudder_build = false
var plaza_build = false
var zachry_build = false

var froma_m = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().change_scene_to_file("res://main menu.tscn")
	print("to main menu")



func _on_main_area_commons_ready() -> void:
	print("help") # Replace with function body.


func _on_am_tree_entered() -> void:
	$AM.instantiate()
