extends CharacterBody2D

@export var speed = 100
@export var bullet_node: PackedScene

var is_player = true

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()

func shoot():
	var bullet = bullet_node.instantiate()

	bullet.global_position = global_position
	bullet.direction = (get_global_mouse_position() - global_position).normalized()

	get_parent().call_deferred("add_child", bullet)
 
func _input(event):
	if event.is_action("shoot"):
		shoot()
