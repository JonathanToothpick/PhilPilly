extends Node2D

onready var timer = get_node("Timer")
onready var player = get_node("player")
onready var label: Label = get_node("Label")
onready var label2: Label = get_node("Label2")
var Insane = false

func _ready():
	timer.set_wait_time(10)
	timer.start()
	
#func _process(delta):
	var time = str(timer.time_left)
	var roundtime = int(time)
	label.text = str(roundtime)
	if roundtime == 0:
		timer.stop()
		Insane = true
	if Insane == true:
		label2.text = str("Insane")
		globalvars.insanitier = 1
	

func _process(delta):
	var time = str(timer.time_left)
	var roundtime = int(time)
	label.text = str(roundtime)
	if roundtime == 0:
		globalvars.insanitier += 1
	label2.text = str("Insanity tier:"," ",globalvars.insanitier)
