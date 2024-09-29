extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pepper_box_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		$Player.vegetable = "Pepper"
		print($Player.vegetable)


func _on_tomato_box_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		$Player.vegetable = "Tomato"
		print($Player.vegetable)


func _on_corn_box_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		$Player.vegetable = "Corn"
		print($Player.vegetable)


func _on_potato_box_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		$Player.vegetable = "Potato"
		print($Player.vegetable)


func _on_carrot_box_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method"):
		$Player.vegetable = "Carrot"
		print($Player.vegetable)


func _on_gz_1_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method") and $gz1.planted == false:
		$gz1.initiate_growing($Player.vegetable)

func _on_gz_2_body_entered(body: Node2D) -> void:
	if body.has_method("player_shop_method") and $gz2.planted == false:
		$gz2.initiate_growing($Player.vegetable)
