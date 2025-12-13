extends Control

## This file ONLY handles logic.
## For alignment see VBoxContainer script.

var current_map_size: int = GameSettings.MapSize.SMALL
var current_bomb_density: int = GameSettings.BombDensity.LOW


func _on_small_map_size_button_pressed() -> void:
	current_map_size = GameSettings.MapSize.SMALL


func _on_medium_map_size_button_pressed() -> void:
	current_map_size = GameSettings.MapSize.MEDIUM


func _on_large_map_size_button_pressed() -> void:
	current_map_size = GameSettings.MapSize.LARGE


func _on_low_bomb_density_button_pressed() -> void:
	current_bomb_density = GameSettings.BombDensity.LOW


func _on_medium_bomb_density_button_pressed() -> void:
	current_bomb_density = GameSettings.BombDensity.MEDIUM


func _on_high_bomb_density_button_pressed() -> void:
	current_bomb_density = GameSettings.BombDensity.HIGH


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu/main_menu/MainMenu.tscn")


func _on_create_game_button_pressed() -> void:
	GameSettings.game_map_size = current_map_size
	GameSettings.game_bomb_density = current_bomb_density
