extends Node2D

var switch_rooms = 0

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if switch_rooms == 1:
		position = Vector2(20, 30)
	if switch_rooms == 2:
		position = Vector2(30, 40)

func _on_timer_timeout() -> void:
	switch_rooms = randi_range(1, 2) 
