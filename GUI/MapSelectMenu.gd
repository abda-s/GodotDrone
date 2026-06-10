extends MarginContainer

signal back

const MAPS := {
	"Training Grid": "res://sceneries/Level1.tscn",
	"Los Santos": "res://sceneries/Level_LosSantos.tscn",
}

@onready var button_grid := %ButtonGrid as Button
@onready var button_los_santos := %ButtonLosSantos as Button
@onready var button_back := %ButtonBack as Button


func _ready() -> void:
	var _discard = button_grid.pressed.connect(_on_map_selected.bind("Training Grid"))
	_discard = button_los_santos.pressed.connect(_on_map_selected.bind("Los Santos"))
	_discard = button_back.pressed.connect(_on_back_pressed)


func _input(event: InputEvent) -> void:
	if event.is_action("ui_cancel") and event.is_pressed() and not event.is_echo():
		accept_event()
		back.emit()


func _on_map_selected(map_name: String) -> void:
	Global.selected_map = MAPS[map_name]
	queue_free()
	var _discard = get_tree().change_scene_to_file(Global.selected_map)


func _on_back_pressed() -> void:
	back.emit()
