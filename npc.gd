extends Node2D

@onready var textbox = $NPC_Textbox
@onready var label = $NPC_Textbox/TextboxContainer/MarginContainer2/HBoxContainer/Label

var player_in_range = false
var dialogue = [
	"Hello traveler!",
	"Nice day, isn't it?",
    "Goodbye!"
]
var index := 0

func _ready():
	textbox.visible = false

# Detect player entering/exiting Area2D
func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		player_in_range = true

func _on_Area2D_body_exited(body):
	if body.is_in_group("Player"):
		player_in_range = false

# Interaction key & advancing dialogue
func _input(event):
	if event.is_action_pressed("interact") and player_in_range:
		start_dialogue()
	elif event.is_action_pressed("ui_accept") and textbox.visible:
		show_next_line()

# Dialogue functions
func start_dialogue():
	textbox.visible = true
	index = 0
	show_next_line()

func show_next_line():
	if index < dialogue.size():
		label.text = dialogue[index]
		index += 1
	else:
		end_dialogue()

func end_dialogue():
	textbox.visible = false
