extends Node2D

var json_description = JSON.parse_string(FileAccess.get_file_as_string("res://test_json/map1.json"))
var rooms_number = "01"
var access_room = json_description[rooms_number]

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	print(rooms_number)

func _on_timer_timeout() -> void:
	rooms_number = access_room[randi() % access_room.size()]
