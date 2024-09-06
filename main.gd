extends Node2D

var poss = []
var count = 0
var clicked = []
var turn = 0
var nod = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while count < get_node("Node2D3/Node2D2").get_child_count():
		poss.append(Vector2(int(get_node("Node2D3/Node2D2").get_child(count).position.x),int(get_node("Node2D3/Node2D2").get_child(count).position.y)))
		count += 1
	print(poss)
	count = 0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("Mouse Click at: ", event.global_position, str(get_node("Node2D3").get_local_mouse_position() ))
			
			count = -5
			while count < 5:
				
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+1)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+2)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+3)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+4)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+5)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+6)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+7)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+8)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+9)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+10)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-1)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-2)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-3)))
				clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-4)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-5)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-6)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-7)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-8)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-9)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-10)))
				count += 1
				
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x-count),int(get_node("Node2D3").get_local_mouse_position().y-count)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x-count),int(get_node("Node2D3").get_local_mouse_position().y+count)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y+count)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y-count)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x-count),int(get_node("Node2D3").get_local_mouse_position().y)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x+count),int(get_node("Node2D3").get_local_mouse_position().y)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x),int(get_node("Node2D3").get_local_mouse_position().y-count)))
				#clicked.append(Vector2(int(get_node("Node2D3").get_local_mouse_position().x),int(get_node("Node2D3").get_local_mouse_position().y+count)))
			count = 0
			while count < clicked.size()-1:
				print(count)
				if poss.has(clicked[count]):
					var thisnum = poss.find(clicked[count])
					print(clicked[count])
					print(poss[thisnum])
					print(thisnum)
					print(get_node("Node2D3/Node2D2").get_child(thisnum))
					if turn == 0:
						get_node("Node2D3/Node2D2").get_child(thisnum).texture = load("res://X.png")
						break
					else:
						get_node("Node2D3/Node2D2").get_child(thisnum).texture = load("res://O.png")
						break
				count += 1
			count = 0
			clicked = []
		
