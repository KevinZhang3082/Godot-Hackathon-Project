extends CanvasLayer

const CHAR_READ_RATE = .075

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer2/HBoxContainer/Start
@onready var end_symbol = $TextboxContainer/MarginContainer2/HBoxContainer/End
@onready var label = $TextboxContainer/MarginContainer2/HBoxContainer/Label
# Called when the node enters the scene tree for the first time.

enum State {
	READY,
	READING,
	FINISHED
}

var current_state = State.READY
var text_queue = []

func _ready() -> void:
	$TextboxContainer.visible = false
	print("Starting state: State.READY")
	hide_textbox()
	queue_text("first text is for testing purposes, testing")

func _process(delta) -> void:
	match current_state:
		State.READY:
			if text_queue.size() != 0:
				display_text()
		State.READING:
			if Input.is_action_just_pressed("ui_accept"):
				$Tween.stop_all()
				label.visible_ratio = 1.0
				_on_Tween_tween_all_complete()
		State.FINISHED:
			if Input.is_action_just_pressed("ui_accept"):
				change_state(State.READY)
				hide_textbox()
				
func queue_text(next_text):
	text_queue.push_back(next_text)
	
func hide_textbox() -> void:
	start_symbol.text = ""
	end_symbol.text = ""
	label.text = ""
	textbox_container.hide()
	
func show_textbox() -> void:
	start_symbol.text = "*"
	end_symbol.text = ""
	textbox_container.show()
	
func display_text() -> void:
	var next_text = text_queue.pop_front()
	label.text = next_text
	label.visible_ratio = 0.0;
	
	change_state(State.READING)
	show_textbox()
	
	var tween = create_tween()
	tween.tween_property(label, "visible_ratio", 1.0, len(next_text) * CHAR_READ_RATE)
	_on_Tween_tween_all_complete()

func _on_Tween_tween_all_complete():
	change_state(State.FINISHED)
	end_symbol.text = ">"
	
func change_state(next_state):
	current_state = next_state
	match current_state:
		State.READY:
			print("Changing state to State.READY")
		State.READING:
			print("Changing state to State.READING")
		State.FINISHED:
			print("Changing state to State.FINISHED")
