extends Node2D


func _ready():
	for i in range(5):
		print("check_position")
		var json_description = JSON.parse_string(FileAccess.get_file_as_string("res://test_json/map1.json"))
		print(json_description)
	
		var a = "12"
		var access_room = json_description[a]
		print("Доступные комнаты", access_room)
	
	
		# рандомная комната от доступной
		var random_room = access_room[randi() % access_room.size()]
		print(random_room)
