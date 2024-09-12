extends Node2D

#all positions of nodes
var poss = []

#just for loops
var count = 0

#all around where you click
var clicked = []

#0 is X 1 is O

var turn = 0

var turnxlow = -999
var turnxhigh = 999

var turnylow = 999
var turnyhigh = -999

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while count < get_node("Node2D3/Node2D2").get_child_count():
		poss.append(Vector2(int(get_node("Node2D3/Node2D2").get_child(count).position.x),int(get_node("Node2D3/Node2D2").get_child(count).position.y)))
		count += 1
	#print(poss)
	print(poss)
	count = 0
	
func turnplace(m, s):
	#bigs: 
	# 1 = (-305, -300) - (-215, -210)
	# 2 = (-200, -300) - (45, -55)
	# 3 = (55, -145) - (150, -55)
	# 4 = (-145, -45) - (-60, 45)
	# 5 = (-45, -45) - (45, 45)
	# 6 = (60, -45) - (145, 45)
	# 7 = (-145, 60) - (-60, 150)
	# 8 = (-45, 60) - (45, 150)
	# 9 = (60, 60) - (150, 150)
	
	#mids:
	# 1 = (start, start) - (start +25, start + 25)
	# 2 = (start +30, start) - (start +55, start +55)
	
	match m:
		1:
			match s:
				1:
					pass
				2:
					pass
				3:
					pass
				4:
					pass
				5:
					pass
				6:
					pass
				7:
					pass
				8:
					pass
				9:
					pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			#print("Mouse Click at: ", event.global_position, str(get_node("Node2D3").get_local_mouse_position() ))
			print("Mouse at: " + str(get_node("Node2D3").get_local_mouse_position()))
			#controls x
			count = -5
			while count < 5:
				
				#controls y
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
				
				count += 1
			count = 0
			
			while count < clicked.size()-1:
				
				if poss.has(clicked[count]): #see if the click matches anything in there
					var thisnum = poss.find(clicked[count]) #get index
					if turn == 0: #X's turn
						get_node("Node2D3/Node2D2").get_child(thisnum).texture = load("res://X.png")
						turn = 1
						break
					else: #O's turn
						get_node("Node2D3/Node2D2").get_child(thisnum).texture = load("res://O.png")
						turn = 0
						break
				count += 1
			count = 0
			clicked = []
		
