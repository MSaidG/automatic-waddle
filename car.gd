extends VehicleBody3D

var ENGINE_FORCE : float = 30000
var MAX_STEER : float = 50

func _ready():
  pass

func _physics_process(delta):
  steering = Input.get_axis("ui_right", "ui_left") * delta * MAX_STEER
  engine_force = Input.get_axis("ui_down", "ui_up") * ENGINE_FORCE * delta
  print("Engine: ", engine_force)
  print("Steering: ", steering)
  pass


