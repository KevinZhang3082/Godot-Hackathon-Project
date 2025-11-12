extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer2/HBoxContainer/Start
@onready var end_symbol = $TextboxContainer/MarginContainer2/HBoxContainer/End
@onready var label = $TextboxContainer/MarginContainer2/HBoxContainer/Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide_textbox()

func hide_textbox() -> void:
	start_symbol.text = ""
	end_symbol.text = ""
	label.text = ""
	#textbox_container.hide()
