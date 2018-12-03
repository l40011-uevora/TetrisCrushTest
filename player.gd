extends Node

var block = load("res://block.tscn").instance()


func _ready():
    add_child(block)

func _process(delta):
    if Input.is_action_just_released("ui_up"):
        var block = load("res://block.tscn").instance()
        add_child(block)
