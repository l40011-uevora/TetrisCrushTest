extends KinematicBody2D

var multiplier = 1
var coordinates = Vector2()
var blockInfo = []
var cor = 1   #associar um número a cada cor e fazer uma cena para cada bloco
var CurrentBoard = load("res://CurrentBoard.tscn").instance()
#fufufufufufu
func _ready():
    add_child(CurrentBoard)
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
    position.y = clamp(position.y, 0, 567)
    if position.y == checker:
        set_physics_process(false)
        multiplier = 1
        coordinates = get_global_position()
        blockInfo = [coordinates.x, coordinates.y, cor]
        $CurrentBoard.add_block_info(blockInfo)



