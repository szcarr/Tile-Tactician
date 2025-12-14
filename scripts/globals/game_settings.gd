extends Node

enum MapSize {
	SMALL,
	MEDIUM,
	LARGE,
}

enum BombDensity {
	LOW,
	MEDIUM,
	HIGH,
}

var map_tiles := {
	MapSize.SMALL: Vector2(20, 20),
	MapSize.MEDIUM: Vector2(40, 40),
	MapSize.LARGE: Vector2(60, 60),
}

var bomb_amount := {
	BombDensity.LOW: 20,
	BombDensity.MEDIUM: 40,
	BombDensity.HIGH: 60,
}

var game_map_size: int
var game_bomb_density: int
