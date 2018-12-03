extends KinematicBody2D

var multiplier = 1

func _ready():
    set_physics_process(true)

func _physics_process(delta):
    var checker = position.y
    position.y = clamp(position.y, 0, 567)
    move_and_collide(Vector2(0, 1.5*multiplier))
    if Input.is_action_just_released("ui_left"):
        position.x -= 67
    if Input.is_action_just_released("ui_right"):
        position.x += 67
    position.x = clamp(position.x, 33, 368)
    if Input.is_action_just_pressed("ui_down"):
        multiplier = 3
    if position.y == checker:
        set_physics_process(false)
        multiplier = 1
        

