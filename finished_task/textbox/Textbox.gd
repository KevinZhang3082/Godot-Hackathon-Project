extends CanvasLayer

@onready var input_box = $TextboxContainer/MarginContainer2/HBoxContainer/Start
@onready var label = $TextboxContainer/MarginContainer2/HBoxContainer/Label
		
var lines = [
	"Where...am I?",
	"Was I not at home sleeping?",
	"I must be dreaming.",
    "Let me have a look around..."
]

var index := 0

func _ready() -> void:
	if $TextboxContainer.visible:
		$"../Player".speed = 0

func _input(event):
	if event.is_action_pressed("interact"):
		show_next_line()
		
func show_next_line():
	if index < lines.size():
		label.text = lines[index]
		index += 1
	else:
		$TextboxContainer.visible = false
		$"../Player".speed = 100
		
