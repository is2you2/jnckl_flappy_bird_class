extends Node2D

export var speed:float=-5
var display_size

func _ready():
	display_size=get_viewport().size.x+48
	position.y=rand_range(-200,-400)

func _process(delta):
	translate(Vector2(speed,0))
	if position.x<-display_size:
		queue_free()
