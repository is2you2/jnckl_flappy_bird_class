extends Node2D

var interval:float
var term:float
var obstacle

func _ready():
	position=Vector2(get_viewport().size)
	term=interval
	obstacle=load('res://actual_obs.tscn')

func _process(delta):
	term+=delta
	if term >= interval:
		add_child(obstacle.instance())
		term-=interval
