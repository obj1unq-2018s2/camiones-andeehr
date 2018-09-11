import camion.*

object knightRider {
	method peso() = 500
	method peligrosidad() = 10
}

object bumblebee {
	var property estaTransformadoEnAuto= false
	method peso() = 800
	method peligrosidad() {
		if (estaTransformadoEnAuto){
			return 15
		} else {
			return 30
		}
	}
}

object paqueteDeLadrillos {
	var property ladrillos = 0
	method peso() = ladrillos * 2
	method peligrosidad() = 2
}

object arenaAGranel {
	var property peso = 0
	method peligrosidad() = 1
}

object bateriaAntiaerea {
	var property estaConMisiles = false
	method peso(){
		if (estaConMisiles){
			return 300
		} else {
			return 200
		}
	}
	method peligrosidad(){
		if (estaConMisiles){
			return 100
		} else {
			return 0
		}
	}
}

object contenedorPortuario {
	const cosas = []
	method peso() = cosas.sum{cosa => cosa.peso()} + 100
	method peligrosidad() {
		if (not cosas.isEmpty()){
			return (cosas.max{cosa => cosa.peligrosidad()}).peligrosidad()
		} else {
			return 0
		}
	}
}

object residuosRadioactivos {
	var property peso = 0
	method peligrosidad() = 200
}

object embalajeDeSeguridad {
	var property cosaAEmbalar = knightRider
	method peso() = cosaAEmbalar.peso()
	method peligrosidad() = cosaAEmbalar.peligrosidad() / 2
}