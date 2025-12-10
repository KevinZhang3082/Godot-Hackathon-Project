extends State
 
func enter():
	super.enter()
	animation_player.play("punch")
 
func transition():
	var distance = owner.direction.length()
	
	if distance > 30:
		get_parent().change_state("smash")
