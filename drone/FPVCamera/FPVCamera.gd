class_name FPVCamera
extends Camera3D


@export_range (90, 180) var fov_h := 150.0
@export_range (0.001, 1) var clip_near := 0.005
@export_range (10, 10000) var clip_far := 1000.0


func _ready() -> void:
	near = clip_near
	far = clip_far
