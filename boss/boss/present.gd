extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	shoot_projectile()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func shoot_projectile():
	pass
	#var projectile = preload("res://assets/Presents/Present.png").instantiate()
	#projectile.position = position
	#get_parent().add_child(projectile)
