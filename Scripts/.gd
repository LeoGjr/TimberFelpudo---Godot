extends Node2D

onready var idle = get_node("Idle")
onready var bate = get_node("Bate")
onready var anim = get_node("AnimationPlayer")
onready var tumulo = get_node("Tumulo")

var lado

const ESQ = -1
const DIR = 1

func _ready():

	pass

func esq():
	set_pos(Vector2(220, 1070))
	idle.set_flip_h(false)
	bate.set_flip_h(false)
	
	tumulo.set_pos(Vector2(-44, 41))
	tumulo.set_flip_h(true)
	lado = ESQ
	
func dir():
	set_pos(Vector2(500, 1070))
	idle.set_flip_h(true)
	bate.set_flip_h(true)
	
	tumulo.set_pos(Vector2(-44, 41))
	tumulo.set_flip_h(false)
	lado = DIR

func bater():
	anim.play("BaterAnim")		