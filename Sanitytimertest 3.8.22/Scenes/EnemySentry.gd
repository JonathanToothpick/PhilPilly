extends Actor

func _process(delta):
	if globalvars.insanitier == 1:
		$AnimationPlayer.play("tier1")


func _ready():
	$AnimationPlayer.play("tier0")
