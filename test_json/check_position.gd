extends Node2D


func _ready():
	print("check_position")
	var json_description = JSON.parse_string(FileAccess.get_file_as_string("res://test_json/map1.json"))
	# print(json_description)
	
	var a = "01" # Первоначальная комната
	var access_room = json_description[a]
	print("Доступные комнаты", access_room)
	
	# рандомная комната от доступной
	var random_room = access_room[randi() % access_room.size()]
	print("Вырбрал ",random_room)
	a = random_room
	
	
	for i in range(5):
		var old_room = a
		var new_access_room = json_description[old_room]
		var new_random_room = new_access_room[randi() % new_access_room.size()]
		print("Вырбрал ", new_random_room)
		a = new_random_room
