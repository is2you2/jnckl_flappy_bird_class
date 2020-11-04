extends RigidBody2D

export var jump_power:float=-225

func _input(event):
	if event.is_action_pressed("ui_select") or event is InputEventScreenTouch:
		linear_velocity=Vector2(0,jump_power)

func _process(delta):
	pass
