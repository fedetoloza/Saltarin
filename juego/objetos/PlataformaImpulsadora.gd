extends Area2D

onready var animacion = $AnimationPlayer
onready var sfx_salto = $Salto

func _ready():
	animacion.play("idle")


func _on_DetectorImpulso_body_entered(body):
	sfx_salto.play()
	animacion.play("impulsar")
	body.impulsar()
