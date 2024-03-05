extends VehicleBody3D

const MAX_STEER = 0.8
const ENGINE_POWER = 150

#func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	steering = move_toward(steering, Input.get_axis("left", "right") * MAX_STEER, delta)
	engine_force = Input.get_axis("forward", "backward") * ENGINE_POWER
	apply_steer_and_engine_forces()

func apply_steer_and_engine_forces():
	get_node("FrontLeft").engine_force = engine_force
	get_node("FrontRight").engine_force = engine_force
	#get_node("FrontLeft").brake = brake
	#get_node("FrontRight").brake = brake
	get_node("FrontLeft").steering = steering
	get_node("FrontRight").steering = steering
	
	#get_node("BackLeft").engine_force = engine_force
	#get_node("BackRight").engine_force = engine_force
	##get_node("FrontLeft").brake = brake
	##get_node("FrontRight").brake = brake
	#get_node("BackLeft").steering = steering
	#get_node("BackRight").steering = steering
