extends Node2D

onready var arrow = get_node("Arrow/RayCast2D")
const SPEED = 5


func _ready():
	pass


func _process(delta):
	var m_pos = get_global_mouse_position()
	var angle = atan2(position.y-m_pos.y, m_pos.x-position.x)
	rotation = angle*-1
	
	if Input.is_action_pressed("player_up"):
		position.y -= SPEED
	elif Input.is_action_pressed("player_down"):
		position.y += SPEED
	elif Input.is_action_pressed("player_right"):
		position.x += SPEED
	elif Input.is_action_pressed("player_left"):
		position.x -= SPEED
		
