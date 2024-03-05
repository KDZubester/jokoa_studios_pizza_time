extends Camera3D

@export var target : Node3D
@export var lerp_speed : float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	global_position = global_position.lerp(target.global_position, lerp_speed)
