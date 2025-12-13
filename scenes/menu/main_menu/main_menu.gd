extends Control

## This file ONLY handles logic.
## For alignment see VBoxContainer script.

@onready var play_button: Button = %PlayButton
@onready var setting_button: Button = %SettingButton
@onready var leaderboard_button: Button = %LeaderboardButton
@onready var exit_button: Button = %ExitButton

@onready var button_list = [
	play_button,
	setting_button,
	leaderboard_button,
	exit_button,
]


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu/difficulty_menu/DifficultyMenu.tscn")


func _on_settings_button_pressed() -> void:
	pass # Replace with function body.


func _on_leaderboard_button_pressed() -> void:
	pass # Replace with function body.


func _on_exit_button_pressed() -> void:
	get_tree().quit()
