extends Node

export var interval:float=1.5
var term:float
var score:int=0

func _ready():
	term=interval
	$Spawner.interval=interval

func _process(delta):
	term+=delta
	if $ME.position.x>0:
		if term>=interval:
			$Label.text='Score: '+str(score)
			score+=1
			term-=interval
	else:
		$Label2.show()
		set_process(false)
