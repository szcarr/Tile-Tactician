extends VBoxContainer

## Script ONLY setups the menu nothing else.
## Logic handling happens in 'main_menu.gd' script.

@export_category("Button Layout")
@export_range(0.0, 1.0, 0.01) var button_size_vertical: float = 0.5
@export_range(0.0, 1.0, 0.01) var button_size_horizontal: float = 0.8
@export_range(0.0, 100.0, 1.0) var button_padding: int = 4


func _ready() -> void:
	_align_buttons()


func _align_buttons() -> void:
	self.add_theme_constant_override("separation", button_padding) # Padding, does not need an existing theme to work.
	self.anchor_left = button_size_vertical / 2.0
	self.anchor_right = 0.5 + button_size_vertical / 2.0
	self.anchor_top = (1.0 - button_size_horizontal) / 2.0
	self.anchor_bottom = (1.0 - button_size_horizontal) / 2.0 + button_size_horizontal
