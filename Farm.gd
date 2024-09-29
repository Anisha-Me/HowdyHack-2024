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
	$gz1.entered = true
	if body.has_method("player_shop_method") and $gz1.planted == false:
		$gz1.initiate_growing($Player.vegetable)

func _on_gz_2_body_entered(body: Node2D) -> void:
	$gz2.entered = true
	if body.has_method("player_shop_method") and $gz2.planted == false:
		$gz2.initiate_growing($Player.vegetable)

func _on_gz_1_body_exited(body: Node2D) -> void:
	$gz1.entered = false


func _on_gz_2_body_exited(body: Node2D) -> void:
	$gz2.entered = false


func _on_gz_3_body_entered(body: Node2D) -> void:
	$gz3.entered = true
	if body.has_method("player_shop_method") and $gz3.planted == false:
		$gz3.initiate_growing($Player.vegetable)


func _on_gz_3_body_exited(body: Node2D) -> void:
	$gz3.entered = false

func _on_gz_4_body_entered(body: Node2D) -> void:
	$gz4.entered = true
	if body.has_method("player_shop_method") and $gz4.planted == false:
		$gz4.initiate_growing($Player.vegetable)


func _on_gz_4_body_exited(body: Node2D) -> void:
	$gz4.entered = false

func _on_gz_5_body_entered(body: Node2D) -> void:
	$gz5.entered = true
	if body.has_method("player_shop_method") and $gz5.planted == false:
		$gz5.initiate_growing($Player.vegetable)


func _on_gz_5_body_exited(body: Node2D) -> void:
	$gz5.entered = false

func _on_gz_6_body_entered(body: Node2D) -> void:
	$gz6.entered = true
	if body.has_method("player_shop_method") and $gz6.planted == false:
		$gz6.initiate_growing($Player.vegetable)


func _on_gz_6_body_exited(body: Node2D) -> void:
	$gz6.entered = false

func _on_gz_7_body_entered(body: Node2D) -> void:
	$gz7.entered = true
	if body.has_method("player_shop_method") and $gz7.planted == false:
		$gz7.initiate_growing($Player.vegetable)


func _on_gz_7_body_exited(body: Node2D) -> void:
	$gz7.entered = false

func _on_gz_8_body_entered(body: Node2D) -> void:
	$gz8.entered = true
	if body.has_method("player_shop_method") and $gz8.planted == false:
		$gz8.initiate_growing($Player.vegetable)


func _on_gz_8_body_exited(body: Node2D) -> void:
	$gz8.entered = false

func _on_gz_9_body_entered(body: Node2D) -> void:
	$gz9.entered = true
	if body.has_method("player_shop_method") and $gz9.planted == false:
		$gz9.initiate_growing($Player.vegetable)


func _on_gz_9_body_exited(body: Node2D) -> void:
	$gz9.entered = false

func _on_gz_10_body_entered(body: Node2D) -> void:
	$gz10.entered = true
	if body.has_method("player_shop_method") and $gz10.planted == false:
		$gz10.initiate_growing($Player.vegetable)


func _on_gz_10_body_exited(body: Node2D) -> void:
	$gz10.entered = false

func _on_gz_11_body_entered(body: Node2D) -> void:
	$gz11.entered = true
	if body.has_method("player_shop_method") and $gz11.planted == false:
		$gz11.initiate_growing($Player.vegetable)

func _on_gz_11_body_exited(body: Node2D) -> void:
	$gz11.entered = false

func _on_gz_12_body_entered(body: Node2D) -> void:
	$gz12.entered = true
	if body.has_method("player_shop_method") and $gz12.planted == false:
		$gz12.initiate_growing($Player.vegetable)


func _on_gz_12_body_exited(body: Node2D) -> void:
	$gz12.entered = false

func _on_gz_13_body_entered(body: Node2D) -> void:
	$gz13.entered = true
	if body.has_method("player_shop_method") and $gz13.planted == false:
		$gz13.initiate_growing($Player.vegetable)


func _on_gz_13_body_exited(body: Node2D) -> void:
	$gz13.entered = false

func _on_gz_14_body_entered(body: Node2D) -> void:
	$gz14.entered = true
	if body.has_method("player_shop_method") and $gz14.planted == false:
		$gz14.initiate_growing($Player.vegetable)


func _on_gz_15_body_exited(body: Node2D) -> void:
	$gz15.entered = false

func _on_gz_14_body_exited(body: Node2D) -> void:
	$gz14.entered = false

func _on_gz_15_body_entered(body: Node2D) -> void:
	$gz15.entered = true
	if body.has_method("player_shop_method") and $gz15.planted == false:
		$gz15.initiate_growing($Player.vegetable)
