extends State
 
func enter():
	super.enter()
	animation_player.play("punch")
 
func transition():
	var distance = owner.direction.length()
	
	if distance > 30:
		get_parent().change_state("smash")
	elif distance > 130:
		var chance = randi() % 2
		match chance:
			0:
				get_parent().change_state("smash")
			1:
				get_parent().change_state("walk")
