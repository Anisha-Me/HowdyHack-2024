extends Node2D
var money = 0
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

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().change_scene_to_file("res://main menu.tscn")
	print("to main menu")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
