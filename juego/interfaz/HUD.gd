extends Control

onready var etiqueta_vidas = $ContenedorVida/Cantidad
onready var etiqueta_monedas_oro = $ContenedorOro/Cantidad
onready var etiqueta_monedas_plata = $ContenedorPlata/Cantidad
onready var etiqueta_monedas_bronce = $ContenedorBronce/Cantidad
onready var etiqueta_llaves = $ContenedorLlaves/Cantidad


func _ready():
# warning-ignore:return_value_discarded
	DatosPlayer.connect("actualizar_datos", self, "actualizar_hud")
	actualizar_hud()
	
func actualizar_hud():
	etiqueta_vidas.text = "%s" % DatosPlayer.vidas
	etiqueta_monedas_bronce.text = "%s" % DatosPlayer.monedas_bronce
	etiqueta_monedas_plata.text = "%s" % DatosPlayer.monedas_plata
	etiqueta_monedas_oro.text = "%s" % DatosPlayer.monedas_oro
	etiqueta_llaves.text = "%s" % DatosPlayer.llaves
